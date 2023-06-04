<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pi</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AWS Performance Insights

### Description

Amazon RDS Performance Insights

Amazon RDS Performance Insights enables you to monitor and explore
different dimensions of database load based on data captured from a
running DB instance. The guide provides detailed information about
Performance Insights data types, parameters and errors.

When Performance Insights is enabled, the Amazon RDS Performance
Insights API provides visibility into the performance of your DB
instance. Amazon CloudWatch provides the authoritative source for Amazon
Web Services service-vended monitoring metrics. Performance Insights
offers a domain-specific view of DB load.

DB load is measured as average active sessions. Performance Insights
provides the data to API consumers as a two-dimensional time-series
dataset. The time dimension provides DB load data for each time point in
the queried time range. Each time point decomposes overall load in
relation to the requested dimensions, measured at that time point.
Examples include SQL, Wait event, User, and Host.

-   To learn more about Performance Insights and Amazon Aurora DB
    instances, go to the
    *<span href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_PerfInsights.html">
    Amazon Aurora User Guide</span>* .

-   To learn more about Performance Insights and Amazon RDS DB
    instances, go to the
    *<span href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PerfInsights.html">
    Amazon RDS User Guide</span>* .

-   To learn more about Performance Insights and Amazon DocumentDB
    clusters, go to the
    *<span href="https://docs.aws.amazon.com/documentdb/latest/developerguide/performance-insights.html">
    Amazon DocumentDB Developer Guide</span>* .

### Usage

    pi(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="pi_:_config">config</code></td>
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

    svc <- pi(
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
<td style="text-align: left;"><a href="../pi_describe_dimension_keys/"> describe_dimension_keys </a></td>
<td style="text-align: left;">For a specific time period, retrieve the
top N dimension keys for a metric</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pi_get_dimension_key_details/"> get_dimension_key_details </a></td>
<td style="text-align: left;">Get the attributes of the specified
dimension group for a DB instance or data source</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pi_get_resource_metadata/"> get_resource_metadata </a></td>
<td style="text-align: left;">Retrieve the metadata for different
features</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pi_get_resource_metrics/"> get_resource_metrics </a></td>
<td style="text-align: left;">Retrieve Performance Insights metrics for
a set of data sources over a time period</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pi_list_available_resource_dimensions/"> list_available_resource_dimensions </a></td>
<td style="text-align: left;">Retrieve the dimensions that can be
queried for each specified metric type on a specified DB instance</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pi_list_available_resource_metrics/"> list_available_resource_metrics </a></td>
<td style="text-align: left;">Retrieve metrics of the specified types
that can be queried for a specified DB instance</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- pi()
    svc$describe_dimension_keys(
      Foo = 123
    )

    ## End(Not run)
