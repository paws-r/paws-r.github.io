<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>secretsmanager</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AWS Secrets Manager

### Description

Amazon Web Services Secrets Manager

Amazon Web Services Secrets Manager provides a service to enable you to
store, manage, and retrieve, secrets.

This guide provides descriptions of the Secrets Manager API. For more
information about using this service, see the [Amazon Web Services
Secrets Manager User
Guide](https://docs.aws.amazon.com/secretsmanager/latest/userguide/).

**API Version**

This version of the Secrets Manager API Reference documents the Secrets
Manager API version 2017-10-17.

For a list of endpoints, see [Amazon Web Services Secrets Manager
endpoints](https://docs.aws.amazon.com/secretsmanager/latest/userguide/asm_access.html#endpoints).

**Support and Feedback for Amazon Web Services Secrets Manager**

We welcome your feedback. Send your comments to
<awssecretsmanager-feedback@amazon.com>, or post your feedback and
questions in the Amazon Web Services Secrets Manager Discussion Forum.
For more information about the Amazon Web Services Discussion Forums,
see Forums Help.

**Logging API Requests**

Amazon Web Services Secrets Manager supports Amazon Web Services
CloudTrail, a service that records Amazon Web Services API calls for
your Amazon Web Services account and delivers log files to an Amazon S3
bucket. By using information that's collected by Amazon Web Services
CloudTrail, you can determine the requests successfully made to Secrets
Manager, who made the request, when it was made, and so on. For more
about Amazon Web Services Secrets Manager and support for Amazon Web
Services CloudTrail, see [Logging Amazon Web Services Secrets Manager
Events with Amazon Web Services
CloudTrail](https://docs.aws.amazon.com/secretsmanager/latest/userguide/monitoring.html#monitoring_cloudtrail)
in the *Amazon Web Services Secrets Manager User Guide*. To learn more
about CloudTrail, including enabling it and find your log files, see the
[Amazon Web Services CloudTrail User
Guide](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-user-guide.html).

### Usage

    secretsmanager(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="secretsmanager_:_config">config</code></td>
<td><p>Optional configuration of credentials, endpoint, and/or
region.</p>
<ul>
<li><p><strong>access_key_id</strong>: AWS access key ID</p></li>
<li><p><strong>secret_access_key</strong>: AWS secret access
key</p></li>
<li><p><strong>session_token</strong>: AWS temporary session
token</p></li>
<li><p><strong>profile</strong>: The name of a profile to use. If not
given, then the default profile is used.</p></li>
<li><p><strong>anonymous</strong>: Set anonymous credentials.</p></li>
<li><p><strong>endpoint</strong>: The complete URL to use for the
constructed client.</p></li>
<li><p><strong>region</strong>: The AWS Region used in instantiating the
client.</p></li>
<li><p><strong>close_connection</strong>: Immediately close all HTTP
connections.</p></li>
<li><p><strong>timeout</strong>: The time in seconds till a timeout
exception is thrown when attempting to make a connection. The default is
60 seconds.</p></li>
<li><p><strong>s3_force_path_style</strong>: Set this to
<code>true</code> to force the request to use path-style addressing,
i.e., <code
style="white-space: pre;">⁠http://s3.amazonaws.com/BUCKET/KEY⁠</code>.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A client for the service. You can call the service's operations using
syntax like `svc$operation(...)`, where `svc` is the name you've
assigned to the client. The available operations are listed in the
Operations section.

### Service syntax

    svc <- secretsmanager(
      config = list(
        credentials = list(
          creds = list(
            access_key_id = "string",
            secret_access_key = "string",
            session_token = "string"
          ),
          profile = "string",
          anonymous = "logical"
        ),
        endpoint = "string",
        region = "string",
        close_connection = "logical",
        timeout = "numeric",
        s3_force_path_style = "logical"
      )
    )

### Operations

<table>
<tbody>
<tr class="odd">
<td style="text-align: left;"><a href="../secretsmanager_cancel_rotate_secret/"> cancel_rotate_secret </a></td>
<td style="text-align: left;">Turns off automatic rotation, and if a
rotation is currently in progress, cancels the rotation</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../secretsmanager_create_secret/"> create_secret </a></td>
<td style="text-align: left;">Creates a new secret</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../secretsmanager_delete_resource_policy/"> delete_resource_policy </a></td>
<td style="text-align: left;">Deletes the resource-based permission
policy attached to the secret</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../secretsmanager_delete_secret/"> delete_secret </a></td>
<td style="text-align: left;">Deletes a secret and all of its
versions</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../secretsmanager_describe_secret/"> describe_secret </a></td>
<td style="text-align: left;">Retrieves the details of a secret</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../secretsmanager_get_random_password/"> get_random_password </a></td>
<td style="text-align: left;">Generates a random password</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../secretsmanager_get_resource_policy/"> get_resource_policy </a></td>
<td style="text-align: left;">Retrieves the JSON text of the
resource-based policy document attached to the secret</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../secretsmanager_get_secret_value/"> get_secret_value </a></td>
<td style="text-align: left;">Retrieves the contents of the encrypted
fields SecretString or SecretBinary from the specified version of a
secret, whichever contains content</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../secretsmanager_list_secrets/"> list_secrets </a></td>
<td style="text-align: left;">Lists the secrets that are stored by
Secrets Manager in the Amazon Web Services account, not including
secrets that are marked for deletion</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../secretsmanager_list_secret_version_ids/"> list_secret_version_ids </a></td>
<td style="text-align: left;">Lists the versions of a secret</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../secretsmanager_put_resource_policy/"> put_resource_policy </a></td>
<td style="text-align: left;">Attaches a resource-based permission
policy to a secret</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../secretsmanager_put_secret_value/"> put_secret_value </a></td>
<td style="text-align: left;">Creates a new version with a new encrypted
secret value and attaches it to the secret</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../secretsmanager_remove_regions_from_replication/"> remove_regions_from_replication </a></td>
<td style="text-align: left;">For a secret that is replicated to other
Regions, deletes the secret replicas from the Regions you specify</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../secretsmanager_replicate_secret_to_regions/"> replicate_secret_to_regions </a></td>
<td style="text-align: left;">Replicates the secret to a new
Regions</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../secretsmanager_restore_secret/"> restore_secret </a></td>
<td style="text-align: left;">Cancels the scheduled deletion of a secret
by removing the DeletedDate time stamp</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../secretsmanager_rotate_secret/"> rotate_secret </a></td>
<td style="text-align: left;">Configures and starts the asynchronous
process of rotating the secret</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../secretsmanager_stop_replication_to_replica/"> stop_replication_to_replica </a></td>
<td style="text-align: left;">Removes the link between the replica
secret and the primary secret and promotes the replica to a primary
secret in the replica Region</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../secretsmanager_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Attaches tags to a secret</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../secretsmanager_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes specific tags from a secret</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../secretsmanager_update_secret/"> update_secret </a></td>
<td style="text-align: left;">Modifies the details of a secret,
including metadata and the secret value</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../secretsmanager_update_secret_version_stage/"> update_secret_version_stage </a></td>
<td style="text-align: left;">Modifies the staging labels attached to a
version of a secret</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../secretsmanager_validate_resource_policy/"> validate_resource_policy </a></td>
<td style="text-align: left;">Validates that a resource policy does not
grant a wide range of principals access to your secret</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- secretsmanager()
    # The following example shows how to cancel rotation for a secret. The
    # operation sets the RotationEnabled field to false and cancels all
    # scheduled rotations. To resume scheduled rotations, you must re-enable
    # rotation by calling the rotate-secret operation.
    svc$cancel_rotate_secret(
      SecretId = "MyTestDatabaseSecret"
    )

    ## End(Not run)
