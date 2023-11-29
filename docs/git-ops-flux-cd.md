# GitOps and Flux CD

GitOps is simply having the configuration for your infrastructure and service workload under version control, specifically git.
This is to ensure reproducability between versions as well as providing a way to roll back to a previous known stable version.

There are two main ways of applying these version controlled descriptions of your application.

## Toil, pull or push

There are a couple of ways to deploy cloud native applications.

1. Manually apply a manifest to the API server.
2. Manually apply a Helm chart to the API server
3. Push changes to a version controll system and trigger a CICD pipeline which applies the manifest/chart to the API server.
4. A trusted processs within the server looks at a set of version controlled configurations and applies it to itself

[Argo CD](https://argo-cd.readthedocs.io/en/stable/) favors the push based approach
[Flux CD](https://fluxcd.io/) favors the pull based approach.