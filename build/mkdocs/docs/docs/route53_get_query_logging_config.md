<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53_get_query_logging_config</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about a specified configuration for DNS query logging

### Description

Gets information about a specified configuration for DNS query logging.

For more information about DNS query logs, see
`create_query_logging_config` and [Logging DNS
Queries](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/query-logs.html).

### Usage

    route53_get_query_logging_config(Id)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="route53_get_query_logging_config_:_Id">Id</code></td>
<td><p>[required] The ID of the configuration for DNS query logging that
you want to get information about.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      QueryLoggingConfig = list(
        Id = "string",
        HostedZoneId = "string",
        CloudWatchLogsLogGroupArn = "string"
      )
    )

### Request syntax

    svc$get_query_logging_config(
      Id = "string"
    )
