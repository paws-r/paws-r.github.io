<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>applicationinsights</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon CloudWatch Application Insights

### Description

Amazon CloudWatch Application Insights is a service that helps you
detect common problems with your applications. It enables you to
pinpoint the source of issues in your applications (built with
technologies such as Microsoft IIS, .NET, and Microsoft SQL Server), by
providing key insights into detected problems.

After you onboard your application, CloudWatch Application Insights
identifies, recommends, and sets up metrics and logs. It continuously
analyzes and correlates your metrics and logs for unusual behavior to
surface actionable problems with your application. For example, if your
application is slow and unresponsive and leading to HTTP 500 errors in
your Application Load Balancer (ALB), Application Insights informs you
that a memory pressure problem with your SQL Server database is
occurring. It bases this analysis on impactful metrics and log errors.

### Usage

    applicationinsights(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="applicationinsights_:_config">config</code></td>
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

    svc <- applicationinsights(
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
<td style="text-align: left;"><a href="../applicationinsights_create_application/"> create_application </a></td>
<td style="text-align: left;">Adds an application that is created from a
resource group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../applicationinsights_create_component/"> create_component </a></td>
<td style="text-align: left;">Creates a custom component by grouping
similar standalone instances to monitor</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../applicationinsights_create_log_pattern/"> create_log_pattern </a></td>
<td style="text-align: left;">Adds an log pattern to a
LogPatternSet</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../applicationinsights_delete_application/"> delete_application </a></td>
<td style="text-align: left;">Removes the specified application from
monitoring</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../applicationinsights_delete_component/"> delete_component </a></td>
<td style="text-align: left;">Ungroups a custom component</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../applicationinsights_delete_log_pattern/"> delete_log_pattern </a></td>
<td style="text-align: left;">Removes the specified log pattern from a
LogPatternSet</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../applicationinsights_describe_application/"> describe_application </a></td>
<td style="text-align: left;">Describes the application</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../applicationinsights_describe_component/"> describe_component </a></td>
<td style="text-align: left;">Describes a component and lists the
resources that are grouped together in a component</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../applicationinsights_describe_component_configuration/"> describe_component_configuration </a></td>
<td style="text-align: left;">Describes the monitoring configuration of
the component</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../applicationinsights_describe_component_configuration_recommendation/"> describe_component_configuration_recommendation </a></td>
<td style="text-align: left;">Describes the recommended monitoring
configuration of the component</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../applicationinsights_describe_log_pattern/"> describe_log_pattern </a></td>
<td style="text-align: left;">Describe a specific log pattern from a
LogPatternSet</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../applicationinsights_describe_observation/"> describe_observation </a></td>
<td style="text-align: left;">Describes an anomaly or error with the
application</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../applicationinsights_describe_problem/"> describe_problem </a></td>
<td style="text-align: left;">Describes an application problem</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../applicationinsights_describe_problem_observations/"> describe_problem_observations </a></td>
<td style="text-align: left;">Describes the anomalies or errors
associated with the problem</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../applicationinsights_list_applications/"> list_applications </a></td>
<td style="text-align: left;">Lists the IDs of the applications that you
are monitoring</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../applicationinsights_list_components/"> list_components </a></td>
<td style="text-align: left;">Lists the auto-grouped, standalone, and
custom components of the application</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../applicationinsights_list_configuration_history/"> list_configuration_history </a></td>
<td style="text-align: left;">Lists the INFO, WARN, and ERROR events for
periodic configuration updates performed by Application Insights</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../applicationinsights_list_log_patterns/"> list_log_patterns </a></td>
<td style="text-align: left;">Lists the log patterns in the specific log
LogPatternSet</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../applicationinsights_list_log_pattern_sets/"> list_log_pattern_sets </a></td>
<td style="text-align: left;">Lists the log pattern sets in the specific
application</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../applicationinsights_list_problems/"> list_problems </a></td>
<td style="text-align: left;">Lists the problems with your
application</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../applicationinsights_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Retrieve a list of the tags (keys and
values) that are associated with a specified application</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../applicationinsights_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Add one or more tags (keys and values) to
a specified application</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../applicationinsights_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Remove one or more tags (keys and values)
from a specified application</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../applicationinsights_update_application/"> update_application </a></td>
<td style="text-align: left;">Updates the application</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../applicationinsights_update_component/"> update_component </a></td>
<td style="text-align: left;">Updates the custom component name and/or
the list of resources that make up the component</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../applicationinsights_update_component_configuration/"> update_component_configuration </a></td>
<td style="text-align: left;">Updates the monitoring configurations for
the component</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../applicationinsights_update_log_pattern/"> update_log_pattern </a></td>
<td style="text-align: left;">Adds a log pattern to a LogPatternSet</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- applicationinsights()
    svc$create_application(
      Foo = 123
    )

    ## End(Not run)
