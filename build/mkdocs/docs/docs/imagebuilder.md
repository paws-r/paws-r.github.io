<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>imagebuilder</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## EC2 Image Builder

### Description

EC2 Image Builder is a fully managed Amazon Web Services service that
makes it easier to automate the creation, management, and deployment of
customized, secure, and up-to-date "golden" server images that are
pre-installed and pre-configured with software and settings to meet
specific IT standards.

### Usage

    imagebuilder(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="imagebuilder_:_config">config</code></td>
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

    svc <- imagebuilder(
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
<td style="text-align: left;"><a href="../imagebuilder_cancel_image_creation/"> cancel_image_creation </a></td>
<td style="text-align: left;">CancelImageCreation cancels the creation
of Image</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../imagebuilder_create_component/"> create_component </a></td>
<td style="text-align: left;">Creates a new component that can be used
to build, validate, test, and assess your image</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../imagebuilder_create_container_recipe/"> create_container_recipe </a></td>
<td style="text-align: left;">Creates a new container recipe</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../imagebuilder_create_distribution_configuration/"> create_distribution_configuration </a></td>
<td style="text-align: left;">Creates a new distribution
configuration</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../imagebuilder_create_image/"> create_image </a></td>
<td style="text-align: left;">Creates a new image</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../imagebuilder_create_image_pipeline/"> create_image_pipeline </a></td>
<td style="text-align: left;">Creates a new image pipeline</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../imagebuilder_create_image_recipe/"> create_image_recipe </a></td>
<td style="text-align: left;">Creates a new image recipe</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../imagebuilder_create_infrastructure_configuration/"> create_infrastructure_configuration </a></td>
<td style="text-align: left;">Creates a new infrastructure
configuration</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../imagebuilder_delete_component/"> delete_component </a></td>
<td style="text-align: left;">Deletes a component build version</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../imagebuilder_delete_container_recipe/"> delete_container_recipe </a></td>
<td style="text-align: left;">Deletes a container recipe</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../imagebuilder_delete_distribution_configuration/"> delete_distribution_configuration </a></td>
<td style="text-align: left;">Deletes a distribution configuration</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../imagebuilder_delete_image/"> delete_image </a></td>
<td style="text-align: left;">Deletes an Image Builder image
resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../imagebuilder_delete_image_pipeline/"> delete_image_pipeline </a></td>
<td style="text-align: left;">Deletes an image pipeline</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../imagebuilder_delete_image_recipe/"> delete_image_recipe </a></td>
<td style="text-align: left;">Deletes an image recipe</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../imagebuilder_delete_infrastructure_configuration/"> delete_infrastructure_configuration </a></td>
<td style="text-align: left;">Deletes an infrastructure
configuration</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../imagebuilder_get_component/"> get_component </a></td>
<td style="text-align: left;">Gets a component object</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../imagebuilder_get_component_policy/"> get_component_policy </a></td>
<td style="text-align: left;">Gets a component policy</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../imagebuilder_get_container_recipe/"> get_container_recipe </a></td>
<td style="text-align: left;">Retrieves a container recipe</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../imagebuilder_get_container_recipe_policy/"> get_container_recipe_policy </a></td>
<td style="text-align: left;">Retrieves the policy for a container
recipe</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../imagebuilder_get_distribution_configuration/"> get_distribution_configuration </a></td>
<td style="text-align: left;">Gets a distribution configuration</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../imagebuilder_get_image/"> get_image </a></td>
<td style="text-align: left;">Gets an image</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../imagebuilder_get_image_pipeline/"> get_image_pipeline </a></td>
<td style="text-align: left;">Gets an image pipeline</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../imagebuilder_get_image_policy/"> get_image_policy </a></td>
<td style="text-align: left;">Gets an image policy</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../imagebuilder_get_image_recipe/"> get_image_recipe </a></td>
<td style="text-align: left;">Gets an image recipe</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../imagebuilder_get_image_recipe_policy/"> get_image_recipe_policy </a></td>
<td style="text-align: left;">Gets an image recipe policy</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../imagebuilder_get_infrastructure_configuration/"> get_infrastructure_configuration </a></td>
<td style="text-align: left;">Gets an infrastructure configuration</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../imagebuilder_get_workflow_execution/"> get_workflow_execution </a></td>
<td style="text-align: left;">Get the runtime information that was
logged for a specific runtime instance of the workflow</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../imagebuilder_get_workflow_step_execution/"> get_workflow_step_execution </a></td>
<td style="text-align: left;">Get the runtime information that was
logged for a specific runtime instance of the workflow step</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../imagebuilder_import_component/"> import_component </a></td>
<td style="text-align: left;">Imports a component and transforms its
data into a component document</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../imagebuilder_import_vm_image/"> import_vm_image </a></td>
<td style="text-align: left;">When you export your virtual machine (VM)
from its virtualization environment, that process creates a set of one
or more disk container files that act as snapshots of your VM’s
environment, settings, and data</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../imagebuilder_list_component_build_versions/"> list_component_build_versions </a></td>
<td style="text-align: left;">Returns the list of component build
versions for the specified semantic version</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../imagebuilder_list_components/"> list_components </a></td>
<td style="text-align: left;">Returns the list of components that can be
filtered by name, or by using the listed filters to streamline
results</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../imagebuilder_list_container_recipes/"> list_container_recipes </a></td>
<td style="text-align: left;">Returns a list of container recipes</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../imagebuilder_list_distribution_configurations/"> list_distribution_configurations </a></td>
<td style="text-align: left;">Returns a list of distribution
configurations</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../imagebuilder_list_image_build_versions/"> list_image_build_versions </a></td>
<td style="text-align: left;">Returns a list of image build
versions</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../imagebuilder_list_image_packages/"> list_image_packages </a></td>
<td style="text-align: left;">List the Packages that are associated with
an Image Build Version, as determined by Amazon Web Services Systems
Manager Inventory at build time</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../imagebuilder_list_image_pipeline_images/"> list_image_pipeline_images </a></td>
<td style="text-align: left;">Returns a list of images created by the
specified pipeline</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../imagebuilder_list_image_pipelines/"> list_image_pipelines </a></td>
<td style="text-align: left;">Returns a list of image pipelines</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../imagebuilder_list_image_recipes/"> list_image_recipes </a></td>
<td style="text-align: left;">Returns a list of image recipes</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../imagebuilder_list_images/"> list_images </a></td>
<td style="text-align: left;">Returns the list of images that you have
access to</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../imagebuilder_list_image_scan_finding_aggregations/"> list_image_scan_finding_aggregations </a></td>
<td style="text-align: left;">Returns a list of image scan aggregations
for your account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../imagebuilder_list_image_scan_findings/"> list_image_scan_findings </a></td>
<td style="text-align: left;">Returns a list of image scan findings for
your account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../imagebuilder_list_infrastructure_configurations/"> list_infrastructure_configurations </a></td>
<td style="text-align: left;">Returns a list of infrastructure
configurations</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../imagebuilder_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Returns the list of tags for the specified
resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../imagebuilder_list_workflow_executions/"> list_workflow_executions </a></td>
<td style="text-align: left;">Returns a list of workflow runtime
instance metadata objects for a specific image build version</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../imagebuilder_list_workflow_step_executions/"> list_workflow_step_executions </a></td>
<td style="text-align: left;">Shows runtime data for each step in a
runtime instance of the workflow that you specify in the request</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../imagebuilder_put_component_policy/"> put_component_policy </a></td>
<td style="text-align: left;">Applies a policy to a component</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../imagebuilder_put_container_recipe_policy/"> put_container_recipe_policy </a></td>
<td style="text-align: left;">Applies a policy to a container image</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../imagebuilder_put_image_policy/"> put_image_policy </a></td>
<td style="text-align: left;">Applies a policy to an image</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../imagebuilder_put_image_recipe_policy/"> put_image_recipe_policy </a></td>
<td style="text-align: left;">Applies a policy to an image recipe</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../imagebuilder_start_image_pipeline_execution/"> start_image_pipeline_execution </a></td>
<td style="text-align: left;">Manually triggers a pipeline to create an
image</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../imagebuilder_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Adds a tag to a resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../imagebuilder_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes a tag from a resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../imagebuilder_update_distribution_configuration/"> update_distribution_configuration </a></td>
<td style="text-align: left;">Updates a new distribution
configuration</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../imagebuilder_update_image_pipeline/"> update_image_pipeline </a></td>
<td style="text-align: left;">Updates an image pipeline</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../imagebuilder_update_infrastructure_configuration/"> update_infrastructure_configuration </a></td>
<td style="text-align: left;">Updates a new infrastructure
configuration</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- imagebuilder()
    svc$cancel_image_creation(
      Foo = 123
    )

    ## End(Not run)
