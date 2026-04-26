pipeline {
    agent { kubernetes { yamlFile 'ci/jenkins/agent-pod.yaml' } }
    parameters {
        choice(name: 'CLOUD',   choices: ['aws','gcp','azure'], description: 'Target cloud')
        choice(name: 'ENV',     choices: ['dev','staging','prod'])
        string(name: 'SERVICE', defaultValue: 'all')
        string(name: 'VERSION', defaultValue: 'latest')
    }
    options { timeout(time: 30, unit: 'MINUTES') }
    stages {
        stage('Configure kubeconfig') {
            steps {
                script {
                    if (params.CLOUD == 'aws') {
                        sh "aws eks update-kubeconfig --name freightforce-${params.ENV} --region us-east-1"
                    } else if (params.CLOUD == 'gcp') {
                        sh "gcloud container clusters get-credentials freightforce-${params.ENV} --region europe-west4 --project freightforce-${params.ENV}"
                    } else {
                        sh "az aks get-credentials --resource-group freightforce-${params.ENV} --name freightforce-${params.ENV}"
                    }
                }
            }
        }
        stage('Helm upgrade') {
            steps {
                sh '''#!/usr/bin/env bash
                set -euo pipefail
                CHART_DIRS=$([ "$SERVICE" = "all" ] && find helm/charts -mindepth 1 -maxdepth 1 -type d || echo "helm/charts/$SERVICE")
                for chart in $CHART_DIRS; do
                    name=$(basename "$chart")
                    helm upgrade --install "$name" "$chart" \
                        --namespace freightforce --create-namespace \
                        -f "$chart/values.yaml" \
                        -f "$chart/values-${CLOUD}.yaml" \
                        --set image.tag=${VERSION}
                done
                '''
            }
        }
        stage('Verify') { steps { sh 'kubectl get pods -n freightforce' } }
    }
}
