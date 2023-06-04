<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>applicationcostprofiler</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AWS Application Cost Profiler

### Description

This reference provides descriptions of the AWS Application Cost
Profiler API.

The AWS Application Cost Profiler API provides programmatic access to
view, create, update, and delete application cost report definitions, as
well as to import your usage data into the Application Cost Profiler
service.

For more information about using this service, see the [AWS Application
Cost Profiler User
Guide](https://docs.aws.amazon.com/application-cost-profiler/latest/userguide/introduction.html).

### Usage

    applicationcostprofiler(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="applicationcostprofiler_:_config">config</code></td>
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

    svc <- applicationcostprofiler(
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
<td style="text-align: left;"><a href="../applicationcostprofiler_delete_report_definition/"> delete_report_definition </a></td>
<td style="text-align: left;">Deletes the specified report definition in
AWS Application Cost Profiler</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../applicationcostprofiler_get_report_definition/"> get_report_definition </a></td>
<td style="text-align: left;">Retrieves the definition of a report
already configured in AWS Application Cost Profiler</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../applicationcostprofiler_import_application_usage/"> import_application_usage </a></td>
<td style="text-align: left;">Ingests application usage data from Amazon
Simple Storage Service (Amazon S3)</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../applicationcostprofiler_list_report_definitions/"> list_report_definitions </a></td>
<td style="text-align: left;">Retrieves a list of all reports and their
configurations for your AWS account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../applicationcostprofiler_put_report_definition/"> put_report_definition </a></td>
<td style="text-align: left;">Creates the report definition for a report
in Application Cost Profiler</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../applicationcostprofiler_update_report_definition/"> update_report_definition </a></td>
<td style="text-align: left;">Updates existing report in AWS Application
Cost Profiler</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- applicationcostprofiler()
    svc$delete_report_definition(
      Foo = 123
    )

    ## End(Not run)
