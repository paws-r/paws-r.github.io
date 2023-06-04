<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>autoscalingplans</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AWS Auto Scaling Plans

### Description

AWS Auto Scaling

Use AWS Auto Scaling to create scaling plans for your applications to
automatically scale your scalable AWS resources.

**API Summary**

You can use the AWS Auto Scaling service API to accomplish the following
tasks:

-   Create and manage scaling plans

-   Define target tracking scaling policies to dynamically scale your
    resources based on utilization

-   Scale Amazon EC2 Auto Scaling groups using predictive scaling and
    dynamic scaling to scale your Amazon EC2 capacity faster

-   Set minimum and maximum capacity limits

-   Retrieve information on existing scaling plans

-   Access current forecast data and historical forecast data for up to
    56 days previous

To learn more about AWS Auto Scaling, including information about
granting IAM users required permissions for AWS Auto Scaling actions,
see the [AWS Auto Scaling User
Guide](https://docs.aws.amazon.com/autoscaling/plans/userguide/what-is-a-scaling-plan.html).

### Usage

    autoscalingplans(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="autoscalingplans_:_config">config</code></td>
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

    svc <- autoscalingplans(
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
<td style="text-align: left;"><a href="../autoscalingplans_create_scaling_plan/"> create_scaling_plan </a></td>
<td style="text-align: left;">Creates a scaling plan</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../autoscalingplans_delete_scaling_plan/"> delete_scaling_plan </a></td>
<td style="text-align: left;">Deletes the specified scaling plan</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../autoscalingplans_describe_scaling_plan_resources/"> describe_scaling_plan_resources </a></td>
<td style="text-align: left;">Describes the scalable resources in the
specified scaling plan</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../autoscalingplans_describe_scaling_plans/"> describe_scaling_plans </a></td>
<td style="text-align: left;">Describes one or more of your scaling
plans</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../autoscalingplans_get_scaling_plan_resource_forecast_data/"> get_scaling_plan_resource_forecast_data </a></td>
<td style="text-align: left;">Retrieves the forecast data for a scalable
resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../autoscalingplans_update_scaling_plan/"> update_scaling_plan </a></td>
<td style="text-align: left;">Updates the specified scaling plan</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- autoscalingplans()
    svc$create_scaling_plan(
      Foo = 123
    )

    ## End(Not run)
