<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>computeoptimizer</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AWS Compute Optimizer

### Description

Compute Optimizer is a service that analyzes the configuration and
utilization metrics of your Amazon Web Services compute resources, such
as Amazon EC2 instances, Amazon EC2 Auto Scaling groups, Lambda
functions, Amazon EBS volumes, and Amazon ECS services on Fargate. It
reports whether your resources are optimal, and generates optimization
recommendations to reduce the cost and improve the performance of your
workloads. Compute Optimizer also provides recent utilization metric
data, in addition to projected utilization metric data for the
recommendations, which you can use to evaluate which recommendation
provides the best price-performance trade-off. The analysis of your
usage patterns can help you decide when to move or resize your running
resources, and still meet your performance and capacity requirements.
For more information about Compute Optimizer, including the required
permissions to use the service, see the [Compute Optimizer User
Guide](https://docs.aws.amazon.com/compute-optimizer/latest/ug/).

### Usage

    computeoptimizer(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="computeoptimizer_:_config">config</code></td>
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

    svc <- computeoptimizer(
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
<td style="text-align: left;"><a href="../computeoptimizer_delete_recommendation_preferences/"> delete_recommendation_preferences </a></td>
<td style="text-align: left;">Deletes a recommendation preference, such
as enhanced infrastructure metrics</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../computeoptimizer_describe_recommendation_export_jobs/"> describe_recommendation_export_jobs </a></td>
<td style="text-align: left;">Describes recommendation export jobs
created in the last seven days</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../computeoptimizer_export_auto_scaling_group_recommendations/"> export_auto_scaling_group_recommendations </a></td>
<td style="text-align: left;">Exports optimization recommendations for
Auto Scaling groups</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../computeoptimizer_export_ebs_volume_recommendations/"> export_ebs_volume_recommendations </a></td>
<td style="text-align: left;">Exports optimization recommendations for
Amazon EBS volumes</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../computeoptimizer_export_ec2_instance_recommendations/"> export_ec2_instance_recommendations </a></td>
<td style="text-align: left;">Exports optimization recommendations for
Amazon EC2 instances</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../computeoptimizer_export_ecs_service_recommendations/"> export_ecs_service_recommendations </a></td>
<td style="text-align: left;">Exports optimization recommendations for
Amazon ECS services on Fargate</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../computeoptimizer_export_lambda_function_recommendations/"> export_lambda_function_recommendations </a></td>
<td style="text-align: left;">Exports optimization recommendations for
Lambda functions</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../computeoptimizer_get_auto_scaling_group_recommendations/"> get_auto_scaling_group_recommendations </a></td>
<td style="text-align: left;">Returns Auto Scaling group
recommendations</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../computeoptimizer_get_ebs_volume_recommendations/"> get_ebs_volume_recommendations </a></td>
<td style="text-align: left;">Returns Amazon Elastic Block Store (Amazon
EBS) volume recommendations</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../computeoptimizer_get_ec2_instance_recommendations/"> get_ec2_instance_recommendations </a></td>
<td style="text-align: left;">Returns Amazon EC2 instance
recommendations</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../computeoptimizer_get_ec2_recommendation_projected_metrics/"> get_ec2_recommendation_projected_metrics </a></td>
<td style="text-align: left;">Returns the projected utilization metrics
of Amazon EC2 instance recommendations</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../computeoptimizer_get_ecs_service_recommendation_projected_metrics/"> get_ecs_service_recommendation_projected_metrics </a></td>
<td style="text-align: left;">Returns the projected metrics of Amazon
ECS service recommendations</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../computeoptimizer_get_ecs_service_recommendations/"> get_ecs_service_recommendations </a></td>
<td style="text-align: left;">Returns Amazon ECS service
recommendations</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../computeoptimizer_get_effective_recommendation_preferences/"> get_effective_recommendation_preferences </a></td>
<td style="text-align: left;">Returns the recommendation preferences
that are in effect for a given resource, such as enhanced infrastructure
metrics</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../computeoptimizer_get_enrollment_status/"> get_enrollment_status </a></td>
<td style="text-align: left;">Returns the enrollment (opt in) status of
an account to the Compute Optimizer service</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../computeoptimizer_get_enrollment_statuses_for_organization/"> get_enrollment_statuses_for_organization </a></td>
<td style="text-align: left;">Returns the Compute Optimizer enrollment
(opt-in) status of organization member accounts, if your account is an
organization management account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../computeoptimizer_get_lambda_function_recommendations/"> get_lambda_function_recommendations </a></td>
<td style="text-align: left;">Returns Lambda function
recommendations</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../computeoptimizer_get_recommendation_preferences/"> get_recommendation_preferences </a></td>
<td style="text-align: left;">Returns existing recommendation
preferences, such as enhanced infrastructure metrics</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../computeoptimizer_get_recommendation_summaries/"> get_recommendation_summaries </a></td>
<td style="text-align: left;">Returns the optimization findings for an
account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../computeoptimizer_put_recommendation_preferences/"> put_recommendation_preferences </a></td>
<td style="text-align: left;">Creates a new recommendation preference or
updates an existing recommendation preference, such as enhanced
infrastructure metrics</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../computeoptimizer_update_enrollment_status/"> update_enrollment_status </a></td>
<td style="text-align: left;">Updates the enrollment (opt in and opt
out) status of an account to the Compute Optimizer service</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- computeoptimizer()
    svc$delete_recommendation_preferences(
      Foo = 123
    )

    ## End(Not run)
