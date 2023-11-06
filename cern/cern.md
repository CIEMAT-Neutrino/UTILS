* Connect to CERN computers: `ssh -C -D 10080 USUARIOCERN@lxplus.cern.ch`
* Configuration and [Resources Portal](https://resources.web.cern.ch/resources/). You may need to upgrade you account as follows:
    1. List Services > E-Groups -> register with you CERN account and search for _np-comp: Linux group np-comp - Neutrino Platform_ and _np04-t0comp-users: Tier0 cores for NP04 users_.
    2. Once this is approved you can check your subscriptions at List Services > LXPLUS and Linux > Computing Groups.
    3. List Services > AFS Workspaces > Settings -> increase your home folder and workspace to 10GB and 100GB respectively.
* [CERN Box](https://auth.cern.ch/auth/realms/cern/protocol/openid-connect/auth?client_id=cernbox-service&redirect_uri=https%3A%2F%2Fcernbox.cern.ch%2Foidc-callback.html&response_type=code&scope=openid+profile+email&state=4ad736181b2e46d0ad608b9a36a73f63&code_challenge=paEeVlNmOzgajMrzI_11RL8JSDEgzMEYGQCddJrkIBk&code_challenge_method=S256&response_mode=query)
* [CERN Mail](https://auth.cern.ch/auth/realms/cern/protocol/openid-connect/auth?response_type=code&scope=openid%20email&client_id=webframeworks-webeos-mailservices-docs&state=6WbPMjWuR60rE3OXc_dDVlFQFKU&redirect_uri=https%3A%2F%2Fmailservices.docs.cern.ch%2Foidc%2Fcallback&nonce=pYiBM92zHoLiAAce3CX4vhPCJmvwMjFo5-5Ov0-NJm8)
* [Neutrino Platform Twiki](https://twiki.cern.ch/twiki/bin/view/CENF/CENFStorageAtCERN#How_to_access_Neutrino_Platform)

If you configured you account you should have an `/afs/cern.ch/work/U/USER_NAME/` existing folder. To monitorize your jobs you can enter in:

* [Grafana](https://monit-grafana.cern.ch/dashboards). You need to change  your organization to *BATCH* in your Profile and in Dashboards > User Batch Jobs -> cluster: cernprod and user: USER_NAME you can check your jobs.
![Alt text](grafana.png)