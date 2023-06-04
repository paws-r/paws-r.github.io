<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>braket</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Braket

### Description

The Amazon Braket API Reference provides information about the
operations and structures supported in Amazon Braket.

Additional Resources:

-   [Amazon Braket Developer
    Guide](https://docs.aws.amazon.com/braket/latest/developerguide/what-is-braket.html)

### Usage

    braket(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="braket_:_config">config</code></td>
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

    svc <- braket(
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
<td style="text-align: left;"><a href="../braket_cancel_job/"> cancel_job </a></td>
<td style="text-align: left;">Cancels an Amazon Braket job</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../braket_cancel_quantum_task/"> cancel_quantum_task </a></td>
<td style="text-align: left;">Cancels the specified task</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../braket_create_job/"> create_job </a></td>
<td style="text-align: left;">Creates an Amazon Braket job</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../braket_create_quantum_task/"> create_quantum_task </a></td>
<td style="text-align: left;">Creates a quantum task</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../braket_get_device/"> get_device </a></td>
<td style="text-align: left;">Retrieves the devices available in Amazon
Braket</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../braket_get_job/"> get_job </a></td>
<td style="text-align: left;">Retrieves the specified Amazon Braket
job</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../braket_get_quantum_task/"> get_quantum_task </a></td>
<td style="text-align: left;">Retrieves the specified quantum task</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../braket_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Shows the tags associated with this
resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../braket_search_devices/"> search_devices </a></td>
<td style="text-align: left;">Searches for devices using the specified
filters</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../braket_search_jobs/"> search_jobs </a></td>
<td style="text-align: left;">Searches for Amazon Braket jobs that match
the specified filter values</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../braket_search_quantum_tasks/"> search_quantum_tasks </a></td>
<td style="text-align: left;">Searches for tasks that match the
specified filter values</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../braket_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Add a tag to the specified resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../braket_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Remove tags from a resource</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- braket()
    svc$cancel_job(
      Foo = 123
    )

    ## End(Not run)
