<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53_delete_query_logging_config</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a configuration for DNS query logging

### Description

Deletes a configuration for DNS query logging. If you delete a
configuration, Amazon Route 53 stops sending query logs to CloudWatch
Logs. Route 53 doesn't delete any logs that are already in CloudWatch
Logs.

For more information about DNS query logs, see
`create_query_logging_config`.

### Usage

    route53_delete_query_logging_config(Id)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="route53_delete_query_logging_config_:_Id">Id</code></td>
<td><p>[required] The ID of the configuration that you want to
delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_query_logging_config(
      Id = "string"
    )
