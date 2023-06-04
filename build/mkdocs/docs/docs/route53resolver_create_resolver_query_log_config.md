<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53resolver_create_resolver_query_log_config</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a Resolver query logging configuration, which defines where you want Resolver to save DNS query logs that originate in your VPCs

### Description

Creates a Resolver query logging configuration, which defines where you
want Resolver to save DNS query logs that originate in your VPCs.
Resolver can log queries only for VPCs that are in the same Region as
the query logging configuration.

To specify which VPCs you want to log queries for, you use
`associate_resolver_query_log_config`. For more information, see
`associate_resolver_query_log_config`.

You can optionally use Resource Access Manager (RAM) to share a query
logging configuration with other Amazon Web Services accounts. The other
accounts can then associate VPCs with the configuration. The query logs
that Resolver creates for a configuration include all DNS queries that
originate in all VPCs that are associated with the configuration.

### Usage

    route53resolver_create_resolver_query_log_config(Name, DestinationArn,
      CreatorRequestId, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53resolver_create_resolver_query_log_config_:_Name">Name</code></td>
<td><p>[required] The name that you want to give the query logging
configuration.</p></td>
</tr>
<tr class="even">
<td><code
id="route53resolver_create_resolver_query_log_config_:_DestinationArn">DestinationArn</code></td>
<td><p>[required] The ARN of the resource that you want Resolver to send
query logs. You can send query logs to an S3 bucket, a CloudWatch Logs
log group, or a Kinesis Data Firehose delivery stream. Examples of valid
values include the following:</p>
<ul>
<li><p><strong>S3 bucket</strong>:</p>
<p><code>arn:aws:s3:::examplebucket</code></p>
<p>You can optionally append a file prefix to the end of the ARN.</p>
<p><code
style="white-space: pre;">⁠arn:aws:s3:::examplebucket/development/⁠</code></p></li>
<li><p><strong>CloudWatch Logs log group</strong>:</p>
<p><code
style="white-space: pre;">⁠arn:aws:logs:us-west-1:123456789012:log-group:/mystack-testgroup-12ABC1AB12A1:*⁠</code></p></li>
<li><p><strong>Kinesis Data Firehose delivery stream</strong>:</p>
<p><code>arn:aws:kinesis:us-east-2:0123456789:stream/my_stream_name</code></p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="route53resolver_create_resolver_query_log_config_:_CreatorRequestId">CreatorRequestId</code></td>
<td><p>[required] A unique string that identifies the request and that
allows failed requests to be retried without the risk of running the
operation twice. <code>CreatorRequestId</code> can be any unique string,
for example, a date/time stamp.</p></td>
</tr>
<tr class="even">
<td><code
id="route53resolver_create_resolver_query_log_config_:_Tags">Tags</code></td>
<td><p>A list of the tag keys and values that you want to associate with
the query logging configuration.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ResolverQueryLogConfig = list(
        Id = "string",
        OwnerId = "string",
        Status = "CREATING"|"CREATED"|"DELETING"|"FAILED",
        ShareStatus = "NOT_SHARED"|"SHARED_WITH_ME"|"SHARED_BY_ME",
        AssociationCount = 123,
        Arn = "string",
        Name = "string",
        DestinationArn = "string",
        CreatorRequestId = "string",
        CreationTime = "string"
      )
    )

### Request syntax

    svc$create_resolver_query_log_config(
      Name = "string",
      DestinationArn = "string",
      CreatorRequestId = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
