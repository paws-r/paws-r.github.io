<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticinference</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon Elastic Inference

### Description

Elastic Inference public APIs.

February 15, 2023: Starting April 15, 2023, AWS will not onboard new
customers to Amazon Elastic Inference (EI), and will help current
customers migrate their workloads to options that offer better price and
performance. After April 15, 2023, new customers will not be able to
launch instances with Amazon EI accelerators in Amazon SageMaker, Amazon
ECS, or Amazon EC2. However, customers who have used Amazon EI at least
once during the past 30-day period are considered current customers and
will be able to continue using the service.

### Usage

    elasticinference(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="elasticinference_:_config">config</code></td>
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

    svc <- elasticinference(
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
<td style="text-align: left;"><a href="../elasticinference_describe_accelerator_offerings/"> describe_accelerator_offerings </a></td>
<td style="text-align: left;">Describes the locations in which a given
accelerator type or set of types is present in a given region</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elasticinference_describe_accelerators/"> describe_accelerators </a></td>
<td style="text-align: left;">Describes information over a provided set
of accelerators belonging to an account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elasticinference_describe_accelerator_types/"> describe_accelerator_types </a></td>
<td style="text-align: left;">Describes the accelerator types available
in a given region, as well as their characteristics, such as memory and
throughput</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elasticinference_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Returns all tags of an Elastic Inference
Accelerator</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../elasticinference_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Adds the specified tags to an Elastic
Inference Accelerator</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../elasticinference_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes the specified tags from an Elastic
Inference Accelerator</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- elasticinference()
    svc$describe_accelerator_offerings(
      Foo = 123
    )

    ## End(Not run)
