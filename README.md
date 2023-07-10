# MediaWiki Deployment to AKS

This repository contains the necessary files and instructions to deploy MediaWiki to an Azure Kubernetes Service (AKS) cluster using Helm charts.

 This deployment utilizes AKS for scalable and reliable hosting of MediaWiki.

## Prerequisites

- An Azure Kubernetes Service (AKS) cluster which can be complted by one click setup pipline .
- Azure CLI installed and configured
- Helm installed

## Installation Steps

1.Trigger the workflow called as deploy.yml.
2.Prereq is to trigger workflow called as infra.yml to setup aks and update kubeconfig file into secrets as KUBECONFIG in github repo .

## Screens



##Infra Setup stage

Trigger the infra deploy workflow to spin up one touch aks cluster.It has following stages .Note this is a fully automated and written in github action .
It read inputs from user to choose which env needs to deploy in .This is for demo so have added logic for dev (one env only) but can be extended to any no of env.
Post it installs azure cli , setup terrafrom , login to SP which is having contributor role on the subscription using azure creds stored in github repo.Post then terrafrom is init, planned and apply.

Note : This is just to demo , it can be further optmized to handle error and reporting ,
Nutshell it  automatically performs the necessary setup and provisioning tasks.Also maria db needs to be installed as stateful set which is not done here due to time constraints.

## Aks Setup
Trigger the infra workflow to see AKS spinned up in default environment .
