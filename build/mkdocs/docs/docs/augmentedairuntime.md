<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>augmentedairuntime</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon Augmented AI Runtime

### Description

Amazon Augmented AI (Amazon A2I) adds the benefit of human judgment to
any machine learning application. When an AI application can't evaluate
data with a high degree of confidence, human reviewers can take over.
This human review is called a human review workflow. To create and start
a human review workflow, you need three resources: a *worker task
template*, a *flow definition*, and a *human loop*.

For information about these resources and prerequisites for using Amazon
A2I, see [Get Started with Amazon Augmented
AI](https://docs.aws.amazon.com/sagemaker/latest/dg/a2i-getting-started.html)
in the Amazon SageMaker Developer Guide.

This API reference includes information about API actions and data types
that you can use to interact with Amazon A2I programmatically. Use this
guide to:

-   Start a human loop with the `start_human_loop` operation when using
    Amazon A2I with a *custom task type*. To learn more about the
    difference between custom and built-in task types, see [Use Task
    Types](https://docs.aws.amazon.com/sagemaker/latest/dg/a2i-task-types-general.html)
    . To learn how to start a human loop using this API, see [Create and
    Start a Human Loop for a Custom Task
    Type](https://docs.aws.amazon.com/sagemaker/latest/dg/a2i-start-human-loop.html#a2i-instructions-starthumanloop)
    in the Amazon SageMaker Developer Guide.

-   Manage your human loops. You can list all human loops that you have
    created, describe individual human loops, and stop and delete human
    loops. To learn more, see [Monitor and Manage Your Human
    Loop](https://docs.aws.amazon.com/sagemaker/latest/dg/a2i-monitor-humanloop-results.html)
    in the Amazon SageMaker Developer Guide.

Amazon A2I integrates APIs from various AWS services to create and start
human review workflows for those services. To learn how Amazon A2I uses
these APIs, see [Use APIs in Amazon
A2I](https://docs.aws.amazon.com/sagemaker/latest/dg/a2i-api-references.html)
in the Amazon SageMaker Developer Guide.

### Usage

    augmentedairuntime(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="augmentedairuntime_:_config">config</code></td>
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

    svc <- augmentedairuntime(
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
<td style="text-align: left;"><a href="../augmentedairuntime_delete_human_loop/"> delete_human_loop </a></td>
<td style="text-align: left;">Deletes the specified human loop for a
flow definition</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../augmentedairuntime_describe_human_loop/"> describe_human_loop </a></td>
<td style="text-align: left;">Returns information about the specified
human loop</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../augmentedairuntime_list_human_loops/"> list_human_loops </a></td>
<td style="text-align: left;">Returns information about human loops,
given the specified parameters</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../augmentedairuntime_start_human_loop/"> start_human_loop </a></td>
<td style="text-align: left;">Starts a human loop, provided that at
least one activation condition is met</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../augmentedairuntime_stop_human_loop/"> stop_human_loop </a></td>
<td style="text-align: left;">Stops the specified human loop</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- augmentedairuntime()
    svc$delete_human_loop(
      Foo = 123
    )

    ## End(Not run)
