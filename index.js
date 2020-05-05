const core = require('@actions/core');
const github = require('@actions/github');

const eventPayload = require(process.env.GITHUB_EVENT_PATH);

try {

    console.log(process.env.CREDS);
    let secrets = new SecretParser(process.env.CREDS, FormatType.JSON);
    let servicePrincipalId = secrets.getSecret("$.clientId", false);
    let servicePrincipalKey = secrets.getSecret("$.clientSecret", true);
} catch (error) {
  core.setFailed(error.message);
}