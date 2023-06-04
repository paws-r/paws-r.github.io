<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workdocs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon WorkDocs

### Description

The Amazon WorkDocs API is designed for the following use cases:

-   File Migration: File migration applications are supported for users
    who want to migrate their files from an on-premises or off-premises
    file system or service. Users can insert files into a user directory
    structure, as well as allow for basic metadata changes, such as
    modifications to the permissions of files.

-   Security: Support security applications are supported for users who
    have additional security needs, such as antivirus or data loss
    prevention. The API actions, along with CloudTrail, allow these
    applications to detect when changes occur in Amazon WorkDocs. Then,
    the application can take the necessary actions and replace the
    target file. If the target file violates the policy, the application
    can also choose to email the user.

-   eDiscovery/Analytics: General administrative applications are
    supported, such as eDiscovery and analytics. These applications can
    choose to mimic or record the actions in an Amazon WorkDocs site,
    along with CloudTrail, to replicate data for eDiscovery, backup, or
    analytical applications.

All Amazon WorkDocs API actions are Amazon authenticated and
certificate-signed. They not only require the use of the Amazon Web
Services SDK, but also allow for the exclusive use of IAM users and
roles to help facilitate access, trust, and permission policies. By
creating a role and allowing an IAM user to access the Amazon WorkDocs
site, the IAM user gains full administrative visibility into the entire
Amazon WorkDocs site (or as set in the IAM policy). This includes, but
is not limited to, the ability to modify file permissions and upload any
file to any user. This allows developers to perform the three use cases
above, as well as give users the ability to grant access on a selective
basis using the IAM model.

The pricing for Amazon WorkDocs APIs varies depending on the API call
type for these actions:

-   `⁠READ (Get*)⁠`

-   `⁠WRITE (Activate*, Add*, Create*, Deactivate*, Initiate*, Update*)⁠`

-   `⁠LIST (Describe*)⁠`

-   `⁠DELETE*, CANCEL⁠`

For information about Amazon WorkDocs API pricing, see [Amazon WorkDocs
Pricing](https://aws.amazon.com/workdocs/pricing/).

### Usage

    workdocs(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="workdocs_:_config">config</code></td>
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

    svc <- workdocs(
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
<td style="text-align: left;"><a href="../workdocs_abort_document_version_upload/"> abort_document_version_upload </a></td>
<td style="text-align: left;">Aborts the upload of the specified
document version that was previously initiated by
InitiateDocumentVersionUpload</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workdocs_activate_user/"> activate_user </a></td>
<td style="text-align: left;">Activates the specified user</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workdocs_add_resource_permissions/"> add_resource_permissions </a></td>
<td style="text-align: left;">Creates a set of permissions for the
specified folder or document</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workdocs_create_comment/"> create_comment </a></td>
<td style="text-align: left;">Adds a new comment to the specified
document version</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workdocs_create_custom_metadata/"> create_custom_metadata </a></td>
<td style="text-align: left;">Adds one or more custom properties to the
specified resource (a folder, document, or version)</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workdocs_create_folder/"> create_folder </a></td>
<td style="text-align: left;">Creates a folder with the specified name
and parent folder</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workdocs_create_labels/"> create_labels </a></td>
<td style="text-align: left;">Adds the specified list of labels to the
given resource (a document or folder)</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workdocs_create_notification_subscription/"> create_notification_subscription </a></td>
<td style="text-align: left;">Configure Amazon WorkDocs to use Amazon
SNS notifications</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workdocs_create_user/"> create_user </a></td>
<td style="text-align: left;">Creates a user in a Simple AD or Microsoft
AD directory</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workdocs_deactivate_user/"> deactivate_user </a></td>
<td style="text-align: left;">Deactivates the specified user, which
revokes the user's access to Amazon WorkDocs</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workdocs_delete_comment/"> delete_comment </a></td>
<td style="text-align: left;">Deletes the specified comment from the
document version</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workdocs_delete_custom_metadata/"> delete_custom_metadata </a></td>
<td style="text-align: left;">Deletes custom metadata from the specified
resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workdocs_delete_document/"> delete_document </a></td>
<td style="text-align: left;">Permanently deletes the specified document
and its associated metadata</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workdocs_delete_document_version/"> delete_document_version </a></td>
<td style="text-align: left;">Deletes a specific version of a
document</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workdocs_delete_folder/"> delete_folder </a></td>
<td style="text-align: left;">Permanently deletes the specified folder
and its contents</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workdocs_delete_folder_contents/"> delete_folder_contents </a></td>
<td style="text-align: left;">Deletes the contents of the specified
folder</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workdocs_delete_labels/"> delete_labels </a></td>
<td style="text-align: left;">Deletes the specified list of labels from
a resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workdocs_delete_notification_subscription/"> delete_notification_subscription </a></td>
<td style="text-align: left;">Deletes the specified subscription from
the specified organization</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workdocs_delete_user/"> delete_user </a></td>
<td style="text-align: left;">Deletes the specified user from a Simple
AD or Microsoft AD directory</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workdocs_describe_activities/"> describe_activities </a></td>
<td style="text-align: left;">Describes the user activities in a
specified time period</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workdocs_describe_comments/"> describe_comments </a></td>
<td style="text-align: left;">List all the comments for the specified
document version</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workdocs_describe_document_versions/"> describe_document_versions </a></td>
<td style="text-align: left;">Retrieves the document versions for the
specified document</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workdocs_describe_folder_contents/"> describe_folder_contents </a></td>
<td style="text-align: left;">Describes the contents of the specified
folder, including its documents and subfolders</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workdocs_describe_groups/"> describe_groups </a></td>
<td style="text-align: left;">Describes the groups specified by the
query</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workdocs_describe_notification_subscriptions/"> describe_notification_subscriptions </a></td>
<td style="text-align: left;">Lists the specified notification
subscriptions</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workdocs_describe_resource_permissions/"> describe_resource_permissions </a></td>
<td style="text-align: left;">Describes the permissions of a specified
resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workdocs_describe_root_folders/"> describe_root_folders </a></td>
<td style="text-align: left;">Describes the current user's special
folders; the RootFolder and the RecycleBin</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workdocs_describe_users/"> describe_users </a></td>
<td style="text-align: left;">Describes the specified users</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workdocs_get_current_user/"> get_current_user </a></td>
<td style="text-align: left;">Retrieves details of the current user for
whom the authentication token was generated</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workdocs_get_document/"> get_document </a></td>
<td style="text-align: left;">Retrieves details of a document</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workdocs_get_document_path/"> get_document_path </a></td>
<td style="text-align: left;">Retrieves the path information (the
hierarchy from the root folder) for the requested document</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workdocs_get_document_version/"> get_document_version </a></td>
<td style="text-align: left;">Retrieves version metadata for the
specified document</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workdocs_get_folder/"> get_folder </a></td>
<td style="text-align: left;">Retrieves the metadata of the specified
folder</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workdocs_get_folder_path/"> get_folder_path </a></td>
<td style="text-align: left;">Retrieves the path information (the
hierarchy from the root folder) for the specified folder</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workdocs_get_resources/"> get_resources </a></td>
<td style="text-align: left;">Retrieves a collection of resources,
including folders and documents</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workdocs_initiate_document_version_upload/"> initiate_document_version_upload </a></td>
<td style="text-align: left;">Creates a new document object and version
object</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workdocs_remove_all_resource_permissions/"> remove_all_resource_permissions </a></td>
<td style="text-align: left;">Removes all the permissions from the
specified resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workdocs_remove_resource_permission/"> remove_resource_permission </a></td>
<td style="text-align: left;">Removes the permission for the specified
principal from the specified resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workdocs_restore_document_versions/"> restore_document_versions </a></td>
<td style="text-align: left;">Recovers a deleted version of an Amazon
WorkDocs document</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workdocs_search_resources/"> search_resources </a></td>
<td style="text-align: left;">Searches metadata and the content of
folders, documents, document versions, and comments</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workdocs_update_document/"> update_document </a></td>
<td style="text-align: left;">Updates the specified attributes of a
document</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workdocs_update_document_version/"> update_document_version </a></td>
<td style="text-align: left;">Changes the status of the document version
to ACTIVE</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workdocs_update_folder/"> update_folder </a></td>
<td style="text-align: left;">Updates the specified attributes of the
specified folder</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workdocs_update_user/"> update_user </a></td>
<td style="text-align: left;">Updates the specified attributes of the
specified user, and grants or revokes administrative privileges to the
Amazon WorkDocs site</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- workdocs()
    svc$abort_document_version_upload(
      Foo = 123
    )

    ## End(Not run)
