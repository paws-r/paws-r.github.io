<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecrpublic</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon Elastic Container Registry Public

### Description

Amazon Elastic Container Registry Public (Amazon ECR Public) is a
managed container image registry service. Amazon ECR provides both
public and private registries to host your container images. You can use
the Docker CLI or your preferred client to push, pull, and manage
images. Amazon ECR provides a secure, scalable, and reliable registry
for your Docker or Open Container Initiative (OCI) images. Amazon ECR
supports public repositories with this API. For information about the
Amazon ECR API for private repositories, see [Amazon Elastic Container
Registry API
Reference](https://docs.aws.amazon.com/AmazonECR/latest/APIReference/Welcome.html).

### Usage

    ecrpublic(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ecrpublic_:_config">config</code></td>
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

    svc <- ecrpublic(
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
<td style="text-align: left;"><a href="../ecrpublic_batch_check_layer_availability/"> batch_check_layer_availability </a></td>
<td style="text-align: left;">Checks the availability of one or more
image layers that are within a repository in a public registry</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ecrpublic_batch_delete_image/"> batch_delete_image </a></td>
<td style="text-align: left;">Deletes a list of specified images that
are within a repository in a public registry</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ecrpublic_complete_layer_upload/"> complete_layer_upload </a></td>
<td style="text-align: left;">Informs Amazon ECR that the image layer
upload is complete for a specified public registry, repository name, and
upload ID</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ecrpublic_create_repository/"> create_repository </a></td>
<td style="text-align: left;">Creates a repository in a public
registry</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ecrpublic_delete_repository/"> delete_repository </a></td>
<td style="text-align: left;">Deletes a repository in a public
registry</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ecrpublic_delete_repository_policy/"> delete_repository_policy </a></td>
<td style="text-align: left;">Deletes the repository policy that's
associated with the specified repository</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ecrpublic_describe_images/"> describe_images </a></td>
<td style="text-align: left;">Returns metadata that's related to the
images in a repository in a public registry</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ecrpublic_describe_image_tags/"> describe_image_tags </a></td>
<td style="text-align: left;">Returns the image tag details for a
repository in a public registry</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ecrpublic_describe_registries/"> describe_registries </a></td>
<td style="text-align: left;">Returns details for a public registry</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ecrpublic_describe_repositories/"> describe_repositories </a></td>
<td style="text-align: left;">Describes repositories that are in a
public registry</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ecrpublic_get_authorization_token/"> get_authorization_token </a></td>
<td style="text-align: left;">Retrieves an authorization token</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ecrpublic_get_registry_catalog_data/"> get_registry_catalog_data </a></td>
<td style="text-align: left;">Retrieves catalog metadata for a public
registry</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ecrpublic_get_repository_catalog_data/"> get_repository_catalog_data </a></td>
<td style="text-align: left;">Retrieve catalog metadata for a repository
in a public registry</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ecrpublic_get_repository_policy/"> get_repository_policy </a></td>
<td style="text-align: left;">Retrieves the repository policy for the
specified repository</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ecrpublic_initiate_layer_upload/"> initiate_layer_upload </a></td>
<td style="text-align: left;">Notifies Amazon ECR that you intend to
upload an image layer</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ecrpublic_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">List the tags for an Amazon ECR Public
resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ecrpublic_put_image/"> put_image </a></td>
<td style="text-align: left;">Creates or updates the image manifest and
tags that are associated with an image</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ecrpublic_put_registry_catalog_data/"> put_registry_catalog_data </a></td>
<td style="text-align: left;">Create or update the catalog data for a
public registry</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ecrpublic_put_repository_catalog_data/"> put_repository_catalog_data </a></td>
<td style="text-align: left;">Creates or updates the catalog data for a
repository in a public registry</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ecrpublic_set_repository_policy/"> set_repository_policy </a></td>
<td style="text-align: left;">Applies a repository policy to the
specified public repository to control access permissions</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ecrpublic_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Associates the specified tags to a
resource with the specified resourceArn</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ecrpublic_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Deletes specified tags from a
resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ecrpublic_upload_layer_part/"> upload_layer_part </a></td>
<td style="text-align: left;">Uploads an image layer part to Amazon
ECR</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- ecrpublic()
    svc$batch_check_layer_availability(
      Foo = 123
    )

    ## End(Not run)
