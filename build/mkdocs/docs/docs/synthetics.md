<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>synthetics</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Synthetics

### Description

Amazon CloudWatch Synthetics

You can use Amazon CloudWatch Synthetics to continually monitor your
services. You can create and manage *canaries*, which are modular,
lightweight scripts that monitor your endpoints and APIs from the
outside-in. You can set up your canaries to run 24 hours a day, once per
minute. The canaries help you check the availability and latency of your
web services and troubleshoot anomalies by investigating load time data,
screenshots of the UI, logs, and metrics. The canaries seamlessly
integrate with CloudWatch ServiceLens to help you trace the causes of
impacted nodes in your applications. For more information, see [Using
ServiceLens to Monitor the Health of Your
Applications](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/ServiceLens.html)
in the *Amazon CloudWatch User Guide*.

Before you create and manage canaries, be aware of the security
considerations. For more information, see [Security Considerations for
Synthetics
Canaries](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/servicelens_canaries_security.html).

### Usage

    synthetics(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="synthetics_:_config">config</code></td>
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

    svc <- synthetics(
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
<td style="text-align: left;"><a href="../synthetics_associate_resource/"> associate_resource </a></td>
<td style="text-align: left;">Associates a canary with a group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../synthetics_create_canary/"> create_canary </a></td>
<td style="text-align: left;">Creates a canary</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../synthetics_create_group/"> create_group </a></td>
<td style="text-align: left;">Creates a group which you can use to
associate canaries with each other, including cross-Region canaries</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../synthetics_delete_canary/"> delete_canary </a></td>
<td style="text-align: left;">Permanently deletes the specified
canary</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../synthetics_delete_group/"> delete_group </a></td>
<td style="text-align: left;">Deletes a group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../synthetics_describe_canaries/"> describe_canaries </a></td>
<td style="text-align: left;">This operation returns a list of the
canaries in your account, along with full details about each canary</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../synthetics_describe_canaries_last_run/"> describe_canaries_last_run </a></td>
<td style="text-align: left;">Use this operation to see information from
the most recent run of each canary that you have created</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../synthetics_describe_runtime_versions/"> describe_runtime_versions </a></td>
<td style="text-align: left;">Returns a list of Synthetics canary
runtime versions</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../synthetics_disassociate_resource/"> disassociate_resource </a></td>
<td style="text-align: left;">Removes a canary from a group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../synthetics_get_canary/"> get_canary </a></td>
<td style="text-align: left;">Retrieves complete information about one
canary</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../synthetics_get_canary_runs/"> get_canary_runs </a></td>
<td style="text-align: left;">Retrieves a list of runs for a specified
canary</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../synthetics_get_group/"> get_group </a></td>
<td style="text-align: left;">Returns information about one group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../synthetics_list_associated_groups/"> list_associated_groups </a></td>
<td style="text-align: left;">Returns a list of the groups that the
specified canary is associated with</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../synthetics_list_group_resources/"> list_group_resources </a></td>
<td style="text-align: left;">This operation returns a list of the ARNs
of the canaries that are associated with the specified group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../synthetics_list_groups/"> list_groups </a></td>
<td style="text-align: left;">Returns a list of all groups in the
account, displaying their names, unique IDs, and ARNs</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../synthetics_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Displays the tags associated with a canary
or group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../synthetics_start_canary/"> start_canary </a></td>
<td style="text-align: left;">Use this operation to run a canary that
has already been created</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../synthetics_stop_canary/"> stop_canary </a></td>
<td style="text-align: left;">Stops the canary to prevent all future
runs</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../synthetics_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Assigns one or more tags (key-value pairs)
to the specified canary or group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../synthetics_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes one or more tags from the
specified resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../synthetics_update_canary/"> update_canary </a></td>
<td style="text-align: left;">Updates the configuration of a canary that
has already been created</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- synthetics()
    svc$associate_resource(
      Foo = 123
    )

    ## End(Not run)
