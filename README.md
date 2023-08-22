# karpenter-installation
# Karpenter Installation Script

This repository contains a script for installing Karpenter, a Kubernetes Autoscaling Framework. The installation script simplifies the process of setting up Karpenter on your Kubernetes cluster.

## Prerequisites

- A running Kubernetes cluster (version 1.27 or later)
- `kubectl` command-line tool installed and configured to interact with your cluster
- AWS `aws cli` credentials configured if you're using Amazon EKS (or other cloud provider credentials for different platforms)
- `ekctl`
- Helm v3 or later installed (required for Karpenter Helm chart installation)

## Installation Steps

1. Clone the repository:

    ```bash
    git clone https://github.com/oluwafemiayo/karpenter-installation.git
    cd karpenter-installation
    ```

2. Review the Installation Script:

    Open the `karpenter.sh` script in a text editor and review its contents. Ensure that the script points to the correct Kubernetes cluster, set necessary variables and follows best practices for installation. 

3. Read and run script step by step configuration
    ```

    The script will install Karpenter on your cluster using the specified configuration.

4. Verify Installation:

    Check if Karpenter pods are running successfully:

    ```bash
    kubectl get pods -n karpenter-system
    ```

    You should see Karpenter-related pods in a "Running" state.

5. Deploy workload.
   ```bash
   Kubectl apply -f inflate.yaml.
   ```

   <img width="839" alt="Screen Shot 2023-08-23 at 00 48 06" src="https://github.com/oluwafemiayo/karpenter-installation/assets/115284052/321becaf-cb27-4e0e-a4bd-b1514175f6b7">



6. (Optional) Uninstall Karpenter:

    If you need to uninstall Karpenter, you can run:

    ```bash
    helm uninstall karpenter -n karpenter
    ```
Reference Link: https://karpenter.sh/docs/getting-started/migrating-from-cas/

