<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>secretsmanager_update_secret_version_stage</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies the staging labels attached to a version of a secret

### Description

Modifies the staging labels attached to a version of a secret. Secrets
Manager uses staging labels to track a version as it progresses through
the secret rotation process. Each staging label can be attached to only
one version at a time. To add a staging label to a version when it is
already attached to another version, Secrets Manager first removes it
from the other version first and then attaches it to this one. For more
information about versions and staging labels, see [Concepts:
Version](https://docs.aws.amazon.com/secretsmanager/latest/userguide/getting-started.html#term_version).

The staging labels that you specify in the `VersionStage` parameter are
added to the existing list of staging labels for the version.

You can move the `AWSCURRENT` staging label to this version by including
it in this call.

Whenever you move `AWSCURRENT`, Secrets Manager automatically moves the
label `AWSPREVIOUS` to the version that `AWSCURRENT` was removed from.

If this action results in the last label being removed from a version,
then the version is considered to be 'deprecated' and can be deleted by
Secrets Manager.

Secrets Manager generates a CloudTrail log entry when you call this
action. Do not include sensitive information in request parameters
because it might be logged. For more information, see [Logging Secrets
Manager events with
CloudTrail](https://docs.aws.amazon.com/secretsmanager/latest/userguide/monitoring-cloudtrail.html).

**Required permissions:** `secretsmanager:UpdateSecretVersionStage`. For
more information, see [IAM policy actions for Secrets
Manager](https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions)
and [Authentication and access control in Secrets
Manager](https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html).

### Usage

    secretsmanager_update_secret_version_stage(SecretId, VersionStage,
      RemoveFromVersionId, MoveToVersionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="secretsmanager_update_secret_version_stage_:_SecretId">SecretId</code></td>
<td><p>[required] The ARN or the name of the secret with the version and
staging labelsto modify.</p>
<p>For an ARN, we recommend that you specify a complete ARN rather than
a partial ARN. See <a
href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/troubleshoot.html#ARN_secretnamehyphen">Finding
a secret from a partial ARN</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="secretsmanager_update_secret_version_stage_:_VersionStage">VersionStage</code></td>
<td><p>[required] The staging label to add to this version.</p></td>
</tr>
<tr class="odd">
<td><code
id="secretsmanager_update_secret_version_stage_:_RemoveFromVersionId">RemoveFromVersionId</code></td>
<td><p>The ID of the version that the staging label is to be removed
from. If the staging label you are trying to attach to one version is
already attached to a different version, then you must include this
parameter and specify the version that the label is to be removed from.
If the label is attached and you either do not specify this parameter,
or the version ID does not match, then the operation fails.</p></td>
</tr>
<tr class="even">
<td><code
id="secretsmanager_update_secret_version_stage_:_MoveToVersionId">MoveToVersionId</code></td>
<td><p>The ID of the version to add the staging label to. To remove a
label from a version, then do not specify this parameter.</p>
<p>If the staging label is already attached to a different version of
the secret, then you must also specify the
<code>RemoveFromVersionId</code> parameter.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ARN = "string",
      Name = "string"
    )

### Request syntax

    svc$update_secret_version_stage(
      SecretId = "string",
      VersionStage = "string",
      RemoveFromVersionId = "string",
      MoveToVersionId = "string"
    )

### Examples

    ## Not run: 
    # The following example shows you how to add a staging label to a version
    # of a secret. You can review the results by running the operation
    # ListSecretVersionIds and viewing the VersionStages response field for
    # the affected version.
    svc$update_secret_version_stage(
      MoveToVersionId = "EXAMPLE1-90ab-cdef-fedc-ba987SECRET1",
      SecretId = "MyTestDatabaseSecret",
      VersionStage = "STAGINGLABEL1"
    )

    # The following example shows you how to delete a staging label that is
    # attached to a version of a secret. You can review the results by running
    # the operation ListSecretVersionIds and viewing the VersionStages
    # response field for the affected version.
    svc$update_secret_version_stage(
      RemoveFromVersionId = "EXAMPLE1-90ab-cdef-fedc-ba987SECRET1",
      SecretId = "MyTestDatabaseSecret",
      VersionStage = "STAGINGLABEL1"
    )

    # The following example shows you how to move a staging label that is
    # attached to one version of a secret to a different version. You can
    # review the results by running the operation ListSecretVersionIds and
    # viewing the VersionStages response field for the affected version.
    svc$update_secret_version_stage(
      MoveToVersionId = "EXAMPLE2-90ab-cdef-fedc-ba987SECRET2",
      RemoveFromVersionId = "EXAMPLE1-90ab-cdef-fedc-ba987SECRET1",
      SecretId = "MyTestDatabaseSecret",
      VersionStage = "AWSCURRENT"
    )

    ## End(Not run)
