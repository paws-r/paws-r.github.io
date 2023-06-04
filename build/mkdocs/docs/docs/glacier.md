<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glacier</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon Glacier

### Description

Amazon S3 Glacier (Glacier) is a storage solution for "cold data."

Glacier is an extremely low-cost storage service that provides secure,
durable, and easy-to-use storage for data backup and archival. With
Glacier, customers can store their data cost effectively for months,
years, or decades. Glacier also enables customers to offload the
administrative burdens of operating and scaling storage to AWS, so they
don't have to worry about capacity planning, hardware provisioning, data
replication, hardware failure and recovery, or time-consuming hardware
migrations.

Glacier is a great storage choice when low storage cost is paramount and
your data is rarely retrieved. If your application requires fast or
frequent access to your data, consider using Amazon S3. For more
information, see [Amazon Simple Storage Service (Amazon
S3)](https://aws.amazon.com/s3/).

You can store any kind of data in any format. There is no maximum limit
on the total amount of data you can store in Glacier.

If you are a first-time user of Glacier, we recommend that you begin by
reading the following sections in the *Amazon S3 Glacier Developer
Guide*:

-   [What is Amazon S3
    Glacier](https://docs.aws.amazon.com/amazonglacier/latest/dev/introduction.html) -
    This section of the Developer Guide describes the underlying data
    model, the operations it supports, and the AWS SDKs that you can use
    to interact with the service.

-   [Getting Started with Amazon S3
    Glacier](https://docs.aws.amazon.com/amazonglacier/latest/dev/amazon-glacier-getting-started.html) -
    The Getting Started section walks you through the process of
    creating a vault, uploading archives, creating jobs to download
    archives, retrieving the job output, and deleting archives.

### Usage

    glacier(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glacier_:_config">config</code></td>
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

    svc <- glacier(
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
<td style="text-align: left;"><a href="../glacier_abort_multipart_upload/"> abort_multipart_upload </a></td>
<td style="text-align: left;">This operation aborts a multipart upload
identified by the upload ID</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glacier_abort_vault_lock/"> abort_vault_lock </a></td>
<td style="text-align: left;">This operation aborts the vault locking
process if the vault lock is not in the Locked state</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glacier_add_tags_to_vault/"> add_tags_to_vault </a></td>
<td style="text-align: left;">This operation adds the specified tags to
a vault</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glacier_complete_multipart_upload/"> complete_multipart_upload </a></td>
<td style="text-align: left;">You call this operation to inform Amazon
S3 Glacier (Glacier) that all the archive parts have been uploaded and
that Glacier can now assemble the archive from the uploaded parts</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glacier_complete_vault_lock/"> complete_vault_lock </a></td>
<td style="text-align: left;">This operation completes the vault locking
process by transitioning the vault lock from the InProgress state to the
Locked state, which causes the vault lock policy to become
unchangeable</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glacier_create_vault/"> create_vault </a></td>
<td style="text-align: left;">This operation creates a new vault with
the specified name</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glacier_delete_archive/"> delete_archive </a></td>
<td style="text-align: left;">This operation deletes an archive from a
vault</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glacier_delete_vault/"> delete_vault </a></td>
<td style="text-align: left;">This operation deletes a vault</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glacier_delete_vault_access_policy/"> delete_vault_access_policy </a></td>
<td style="text-align: left;">This operation deletes the access policy
associated with the specified vault</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glacier_delete_vault_notifications/"> delete_vault_notifications </a></td>
<td style="text-align: left;">This operation deletes the notification
configuration set for a vault</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glacier_describe_job/"> describe_job </a></td>
<td style="text-align: left;">This operation returns information about a
job you previously initiated, including the job initiation date, the
user who initiated the job, the job status code/message and the Amazon
SNS topic to notify after Amazon S3 Glacier (Glacier) completes the
job</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glacier_describe_vault/"> describe_vault </a></td>
<td style="text-align: left;">This operation returns information about a
vault, including the vault's Amazon Resource Name (ARN), the date the
vault was created, the number of archives it contains, and the total
size of all the archives in the vault</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glacier_get_data_retrieval_policy/"> get_data_retrieval_policy </a></td>
<td style="text-align: left;">This operation returns the current data
retrieval policy for the account and region specified in the GET
request</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glacier_get_job_output/"> get_job_output </a></td>
<td style="text-align: left;">This operation downloads the output of the
job you initiated using InitiateJob</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glacier_get_vault_access_policy/"> get_vault_access_policy </a></td>
<td style="text-align: left;">This operation retrieves the access-policy
subresource set on the vault; for more information on setting this
subresource, see Set Vault Access Policy (PUT access-policy)</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glacier_get_vault_lock/"> get_vault_lock </a></td>
<td style="text-align: left;">This operation retrieves the following
attributes from the lock-policy subresource set on the specified
vault:</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glacier_get_vault_notifications/"> get_vault_notifications </a></td>
<td style="text-align: left;">This operation retrieves the
notification-configuration subresource of the specified vault</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glacier_initiate_job/"> initiate_job </a></td>
<td style="text-align: left;">This operation initiates a job of the
specified type, which can be a select, an archival retrieval, or a vault
retrieval</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glacier_initiate_multipart_upload/"> initiate_multipart_upload </a></td>
<td style="text-align: left;">This operation initiates a multipart
upload</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glacier_initiate_vault_lock/"> initiate_vault_lock </a></td>
<td style="text-align: left;">This operation initiates the vault locking
process by doing the following:</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glacier_list_jobs/"> list_jobs </a></td>
<td style="text-align: left;">This operation lists jobs for a vault,
including jobs that are in-progress and jobs that have recently
finished</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glacier_list_multipart_uploads/"> list_multipart_uploads </a></td>
<td style="text-align: left;">This operation lists in-progress multipart
uploads for the specified vault</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glacier_list_parts/"> list_parts </a></td>
<td style="text-align: left;">This operation lists the parts of an
archive that have been uploaded in a specific multipart upload</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glacier_list_provisioned_capacity/"> list_provisioned_capacity </a></td>
<td style="text-align: left;">This operation lists the provisioned
capacity units for the specified AWS account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glacier_list_tags_for_vault/"> list_tags_for_vault </a></td>
<td style="text-align: left;">This operation lists all the tags attached
to a vault</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glacier_list_vaults/"> list_vaults </a></td>
<td style="text-align: left;">This operation lists all vaults owned by
the calling user's account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glacier_purchase_provisioned_capacity/"> purchase_provisioned_capacity </a></td>
<td style="text-align: left;">This operation purchases a provisioned
capacity unit for an AWS account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glacier_remove_tags_from_vault/"> remove_tags_from_vault </a></td>
<td style="text-align: left;">This operation removes one or more tags
from the set of tags attached to a vault</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glacier_set_data_retrieval_policy/"> set_data_retrieval_policy </a></td>
<td style="text-align: left;">This operation sets and then enacts a data
retrieval policy in the region specified in the PUT request</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glacier_set_vault_access_policy/"> set_vault_access_policy </a></td>
<td style="text-align: left;">This operation configures an access policy
for a vault and will overwrite an existing policy</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glacier_set_vault_notifications/"> set_vault_notifications </a></td>
<td style="text-align: left;">This operation configures notifications
that will be sent when specific events happen to a vault</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../glacier_upload_archive/"> upload_archive </a></td>
<td style="text-align: left;">This operation adds an archive to a
vault</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../glacier_upload_multipart_part/"> upload_multipart_part </a></td>
<td style="text-align: left;">This operation uploads a part of an
archive</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- glacier()
    # The example deletes an in-progress multipart upload to a vault named
    # my-vault:
    svc$abort_multipart_upload(
      accountId = "-",
      uploadId = "19gaRezEXAMPLES6Ry5YYdqthHOC_kGRCT03L9yetr220UmPtBYKk-OssZtLq...",
      vaultName = "my-vault"
    )

    ## End(Not run)
