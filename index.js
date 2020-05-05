const core = require('@actions/core');
const github = require('@actions/github');

const eventPayload = require(process.env.GITHUB_EVENT_PATH);

try {

    let creds = core.getInput('creds', { required: true });
    let secrets = new SecretParser(creds, FormatType.JSON);
    let servicePrincipalId = secrets.getSecret("$.clientId", false);
    let servicePrincipalKey = secrets.getSecret("$.clientSecret", true);
} catch (error) {
  core.setFailed(error.message);
}