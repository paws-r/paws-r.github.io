<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>panorama</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AWS Panorama

### Description

**Overview**

This is the *AWS Panorama API Reference*. For an introduction to the
service, see [What is AWS
Panorama?](https://docs.aws.amazon.com/panorama/latest/dev/panorama-welcome.html)
in the *AWS Panorama Developer Guide*.

### Usage

    panorama(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="panorama_:_config">config</code></td>
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

    svc <- panorama(
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
<td style="text-align: left;"><a href="../panorama_create_application_instance/"> create_application_instance </a></td>
<td style="text-align: left;">Creates an application instance and
deploys it to a device</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../panorama_create_job_for_devices/"> create_job_for_devices </a></td>
<td style="text-align: left;">Creates a job to run on a device</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../panorama_create_node_from_template_job/"> create_node_from_template_job </a></td>
<td style="text-align: left;">Creates a camera stream node</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../panorama_create_package/"> create_package </a></td>
<td style="text-align: left;">Creates a package and storage location in
an Amazon S3 access point</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../panorama_create_package_import_job/"> create_package_import_job </a></td>
<td style="text-align: left;">Imports a node package</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../panorama_delete_device/"> delete_device </a></td>
<td style="text-align: left;">Deletes a device</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../panorama_delete_package/"> delete_package </a></td>
<td style="text-align: left;">Deletes a package</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../panorama_deregister_package_version/"> deregister_package_version </a></td>
<td style="text-align: left;">Deregisters a package version</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../panorama_describe_application_instance/"> describe_application_instance </a></td>
<td style="text-align: left;">Returns information about an application
instance on a device</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../panorama_describe_application_instance_details/"> describe_application_instance_details </a></td>
<td style="text-align: left;">Returns information about an application
instance's configuration manifest</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../panorama_describe_device/"> describe_device </a></td>
<td style="text-align: left;">Returns information about a device</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../panorama_describe_device_job/"> describe_device_job </a></td>
<td style="text-align: left;">Returns information about a device
job</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../panorama_describe_node/"> describe_node </a></td>
<td style="text-align: left;">Returns information about a node</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../panorama_describe_node_from_template_job/"> describe_node_from_template_job </a></td>
<td style="text-align: left;">Returns information about a job to create
a camera stream node</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../panorama_describe_package/"> describe_package </a></td>
<td style="text-align: left;">Returns information about a package</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../panorama_describe_package_import_job/"> describe_package_import_job </a></td>
<td style="text-align: left;">Returns information about a package import
job</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../panorama_describe_package_version/"> describe_package_version </a></td>
<td style="text-align: left;">Returns information about a package
version</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../panorama_list_application_instance_dependencies/"> list_application_instance_dependencies </a></td>
<td style="text-align: left;">Returns a list of application instance
dependencies</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../panorama_list_application_instance_node_instances/"> list_application_instance_node_instances </a></td>
<td style="text-align: left;">Returns a list of application node
instances</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../panorama_list_application_instances/"> list_application_instances </a></td>
<td style="text-align: left;">Returns a list of application
instances</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../panorama_list_devices/"> list_devices </a></td>
<td style="text-align: left;">Returns a list of devices</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../panorama_list_devices_jobs/"> list_devices_jobs </a></td>
<td style="text-align: left;">Returns a list of jobs</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../panorama_list_node_from_template_jobs/"> list_node_from_template_jobs </a></td>
<td style="text-align: left;">Returns a list of camera stream node
jobs</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../panorama_list_nodes/"> list_nodes </a></td>
<td style="text-align: left;">Returns a list of nodes</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../panorama_list_package_import_jobs/"> list_package_import_jobs </a></td>
<td style="text-align: left;">Returns a list of package import jobs</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../panorama_list_packages/"> list_packages </a></td>
<td style="text-align: left;">Returns a list of packages</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../panorama_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Returns a list of tags for a resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../panorama_provision_device/"> provision_device </a></td>
<td style="text-align: left;">Creates a device and returns a
configuration archive</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../panorama_register_package_version/"> register_package_version </a></td>
<td style="text-align: left;">Registers a package version</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../panorama_remove_application_instance/"> remove_application_instance </a></td>
<td style="text-align: left;">Removes an application instance</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../panorama_signal_application_instance_node_instances/"> signal_application_instance_node_instances </a></td>
<td style="text-align: left;">Signal camera nodes to stop or resume</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../panorama_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Tags a resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../panorama_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes tags from a resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../panorama_update_device_metadata/"> update_device_metadata </a></td>
<td style="text-align: left;">Updates a device's metadata</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- panorama()
    svc$create_application_instance(
      Foo = 123
    )

    ## End(Not run)
