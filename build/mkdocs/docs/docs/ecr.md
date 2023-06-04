<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecr</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon EC2 Container Registry

### Description

Amazon Elastic Container Registry

Amazon Elastic Container Registry (Amazon ECR) is a managed container
image registry service. Customers can use the familiar Docker CLI, or
their preferred client, to push, pull, and manage images. Amazon ECR
provides a secure, scalable, and reliable registry for your Docker or
Open Container Initiative (OCI) images. Amazon ECR supports private
repositories with resource-based permissions using IAM so that specific
users or Amazon EC2 instances can access repositories and images.

Amazon ECR has service endpoints in each supported Region. For more
information, see [Amazon ECR
endpoints](https://docs.aws.amazon.com/general/latest/gr/ecr.html) in
the *Amazon Web Services General Reference*.

### Usage

    ecr(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ecr_:_config">config</code></td>
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

    svc <- ecr(
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
<td style="text-align: left;"><a href="../ecr_batch_check_layer_availability/"> batch_check_layer_availability </a></td>
<td style="text-align: left;">Checks the availability of one or more
image layers in a repository</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ecr_batch_delete_image/"> batch_delete_image </a></td>
<td style="text-align: left;">Deletes a list of specified images within
a repository</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ecr_batch_get_image/"> batch_get_image </a></td>
<td style="text-align: left;">Gets detailed information for an
image</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../ecr_batch_get_repository_scanning_configuration/"> batch_get_repository_scanning_configuration </a></td>
<td style="text-align: left;">Gets the scanning configuration for one or
more repositories</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ecr_complete_layer_upload/"> complete_layer_upload </a></td>
<td style="text-align: left;">Informs Amazon ECR that the image layer
upload has completed for a specified registry, repository name, and
upload ID</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ecr_create_pull_through_cache_rule/"> create_pull_through_cache_rule </a></td>
<td style="text-align: left;">Creates a pull through cache rule</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ecr_create_repository/"> create_repository </a></td>
<td style="text-align: left;">Creates a repository</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ecr_delete_lifecycle_policy/"> delete_lifecycle_policy </a></td>
<td style="text-align: left;">Deletes the lifecycle policy associated
with the specified repository</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ecr_delete_pull_through_cache_rule/"> delete_pull_through_cache_rule </a></td>
<td style="text-align: left;">Deletes a pull through cache rule</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ecr_delete_registry_policy/"> delete_registry_policy </a></td>
<td style="text-align: left;">Deletes the registry permissions
policy</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ecr_delete_repository/"> delete_repository </a></td>
<td style="text-align: left;">Deletes a repository</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ecr_delete_repository_policy/"> delete_repository_policy </a></td>
<td style="text-align: left;">Deletes the repository policy associated
with the specified repository</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ecr_describe_image_replication_status/"> describe_image_replication_status </a></td>
<td style="text-align: left;">Returns the replication status for a
specified image</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ecr_describe_images/"> describe_images </a></td>
<td style="text-align: left;">Returns metadata about the images in a
repository</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ecr_describe_image_scan_findings/"> describe_image_scan_findings </a></td>
<td style="text-align: left;">Returns the scan findings for the
specified image</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ecr_describe_pull_through_cache_rules/"> describe_pull_through_cache_rules </a></td>
<td style="text-align: left;">Returns the pull through cache rules for a
registry</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ecr_describe_registry/"> describe_registry </a></td>
<td style="text-align: left;">Describes the settings for a registry</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ecr_describe_repositories/"> describe_repositories </a></td>
<td style="text-align: left;">Describes image repositories in a
registry</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ecr_get_authorization_token/"> get_authorization_token </a></td>
<td style="text-align: left;">Retrieves an authorization token</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ecr_get_download_url_for_layer/"> get_download_url_for_layer </a></td>
<td style="text-align: left;">Retrieves the pre-signed Amazon S3
download URL corresponding to an image layer</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ecr_get_lifecycle_policy/"> get_lifecycle_policy </a></td>
<td style="text-align: left;">Retrieves the lifecycle policy for the
specified repository</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ecr_get_lifecycle_policy_preview/"> get_lifecycle_policy_preview </a></td>
<td style="text-align: left;">Retrieves the results of the lifecycle
policy preview request for the specified repository</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ecr_get_registry_policy/"> get_registry_policy </a></td>
<td style="text-align: left;">Retrieves the permissions policy for a
registry</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ecr_get_registry_scanning_configuration/"> get_registry_scanning_configuration </a></td>
<td style="text-align: left;">Retrieves the scanning configuration for a
registry</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ecr_get_repository_policy/"> get_repository_policy </a></td>
<td style="text-align: left;">Retrieves the repository policy for the
specified repository</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ecr_initiate_layer_upload/"> initiate_layer_upload </a></td>
<td style="text-align: left;">Notifies Amazon ECR that you intend to
upload an image layer</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ecr_list_images/"> list_images </a></td>
<td style="text-align: left;">Lists all the image IDs for the specified
repository</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ecr_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">List the tags for an Amazon ECR
resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ecr_put_image/"> put_image </a></td>
<td style="text-align: left;">Creates or updates the image manifest and
tags associated with an image</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ecr_put_image_scanning_configuration/"> put_image_scanning_configuration </a></td>
<td style="text-align: left;">The PutImageScanningConfiguration API is
being deprecated, in favor of specifying the image scanning
configuration at the registry level</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ecr_put_image_tag_mutability/"> put_image_tag_mutability </a></td>
<td style="text-align: left;">Updates the image tag mutability settings
for the specified repository</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ecr_put_lifecycle_policy/"> put_lifecycle_policy </a></td>
<td style="text-align: left;">Creates or updates the lifecycle policy
for the specified repository</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ecr_put_registry_policy/"> put_registry_policy </a></td>
<td style="text-align: left;">Creates or updates the permissions policy
for your registry</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ecr_put_registry_scanning_configuration/"> put_registry_scanning_configuration </a></td>
<td style="text-align: left;">Creates or updates the scanning
configuration for your private registry</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ecr_put_replication_configuration/"> put_replication_configuration </a></td>
<td style="text-align: left;">Creates or updates the replication
configuration for a registry</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ecr_set_repository_policy/"> set_repository_policy </a></td>
<td style="text-align: left;">Applies a repository policy to the
specified repository to control access permissions</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ecr_start_image_scan/"> start_image_scan </a></td>
<td style="text-align: left;">Starts an image vulnerability scan</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ecr_start_lifecycle_policy_preview/"> start_lifecycle_policy_preview </a></td>
<td style="text-align: left;">Starts a preview of a lifecycle policy for
the specified repository</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ecr_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Adds specified tags to a resource with the
specified ARN</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ecr_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Deletes specified tags from a
resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ecr_upload_layer_part/"> upload_layer_part </a></td>
<td style="text-align: left;">Uploads an image layer part to Amazon
ECR</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- ecr()
    # This example deletes images with the tags precise and trusty in a
    # repository called ubuntu in the default registry for an account.
    svc$batch_delete_image(
      imageIds = list(
        list(
          imageTag = "precise"
        )
      ),
      repositoryName = "ubuntu"
    )

    ## End(Not run)
