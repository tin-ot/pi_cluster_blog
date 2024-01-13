# PI CLUSTER

## MOTIVATION

This repo is kind of a blog to follow the step towards having a highly available pi cluster. Moreover having the main block of an organization ( web servers, registry, vpn...) with a minimum of single point of failures.

Its open in case it is of any use to someone else later.

Or to get feedback if anyone has anything that could help. Please do open an issue.

I do this for educational purposes. In order to get a grip on the technicalities of many fields that I don't get to encounter normally.

I could use this as a base to create some form of organization in my life. I don't have any concrete objective on this yet, just an eventuality.

I may open my code. 

## DESIGN

main goal :

flowchart LR
    A(wild) --> |fa:fa-certificate PubIP| B[fa:fa-shield-alt Livebox5]
    B --> C{fa:fa-arrows-alt Mikrotik\nCRS112-8P-4S}
    C -->|Ip 1| D[fa:fa-server Pi4_01]
    C -->|Ip 2| E[fa:fa-server Pi4_02]
    C -->|Ip 3| F[fa:fa-server Pi5_03]

Having any Pi that could fail at any given point.

