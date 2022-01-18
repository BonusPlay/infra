# infra

This repo contains most of my infrastructure. Because security by obscurity is not the way. Key features:
 - ansible for automation
 - connected to p4net (internal network of p4.team)
   - trurly decentralized
   - uses wireguard to connect between peers
   - every peer has it's own AS and /24 network
   - bird for BGP between peers
   - coredns for DNS with forward delegations to other peers
 - k8s cluster built on 4x raspberry pi
