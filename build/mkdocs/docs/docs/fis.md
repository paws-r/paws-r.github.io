<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>fis</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AWS Fault Injection Simulator

### Description

Fault Injection Simulator is a managed service that enables you to
perform fault injection experiments on your Amazon Web Services
workloads. For more information, see the [Fault Injection Simulator User
Guide](https://docs.aws.amazon.com/fis/latest/userguide/).

### Usage

    fis(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="fis_:_config">config</code></td>
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

    svc <- fis(
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
<td style="text-align: left;"><a href="../fis_create_experiment_template/"> create_experiment_template </a></td>
<td style="text-align: left;">Creates an experiment template</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../fis_delete_experiment_template/"> delete_experiment_template </a></td>
<td style="text-align: left;">Deletes the specified experiment
template</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../fis_get_action/"> get_action </a></td>
<td style="text-align: left;">Gets information about the specified FIS
action</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../fis_get_experiment/"> get_experiment </a></td>
<td style="text-align: left;">Gets information about the specified
experiment</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../fis_get_experiment_template/"> get_experiment_template </a></td>
<td style="text-align: left;">Gets information about the specified
experiment template</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../fis_get_target_resource_type/"> get_target_resource_type </a></td>
<td style="text-align: left;">Gets information about the specified
resource type</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../fis_list_actions/"> list_actions </a></td>
<td style="text-align: left;">Lists the available FIS actions</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../fis_list_experiments/"> list_experiments </a></td>
<td style="text-align: left;">Lists your experiments</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../fis_list_experiment_templates/"> list_experiment_templates </a></td>
<td style="text-align: left;">Lists your experiment templates</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../fis_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Lists the tags for the specified
resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../fis_list_target_resource_types/"> list_target_resource_types </a></td>
<td style="text-align: left;">Lists the target resource types</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../fis_start_experiment/"> start_experiment </a></td>
<td style="text-align: left;">Starts running an experiment from the
specified experiment template</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../fis_stop_experiment/"> stop_experiment </a></td>
<td style="text-align: left;">Stops the specified experiment</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../fis_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Applies the specified tags to the
specified resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../fis_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes the specified tags from the
specified resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../fis_update_experiment_template/"> update_experiment_template </a></td>
<td style="text-align: left;">Updates the specified experiment
template</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- fis()
    svc$create_experiment_template(
      Foo = 123
    )

    ## End(Not run)
