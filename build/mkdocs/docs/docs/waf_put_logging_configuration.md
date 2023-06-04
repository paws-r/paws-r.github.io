<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>waf_put_logging_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This is AWS WAF Classic documentation

### Description

This is **AWS WAF Classic** documentation. For more information, see
[AWS WAF
Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
in the developer guide.

**For the latest version of AWS WAF**, use the AWS WAFV2 API and see the
[AWS WAF Developer
Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
With the latest version, AWS WAF has a single set of endpoints for
regional and global use.

Associates a LoggingConfiguration with a specified web ACL.

You can access information about all traffic that AWS WAF inspects using
the following steps:

1.  Create an Amazon Kinesis Data Firehose.

    Create the data firehose with a PUT source and in the region that
    you are operating. However, if you are capturing logs for Amazon
    CloudFront, always create the firehose in US East (N. Virginia).

    Do not create the data firehose using a `⁠Kinesis stream⁠` as your
    source.

2.  Associate that firehose to your web ACL using a
    `put_logging_configuration` request.

When you successfully enable logging using a `put_logging_configuration`
request, AWS WAF will create a service linked role with the necessary
permissions to write logs to the Amazon Kinesis Data Firehose. For more
information, see [Logging Web ACL Traffic
Information](https://docs.aws.amazon.com/waf/latest/developerguide/logging.html)
in the *AWS WAF Developer Guide*.

### Usage

    waf_put_logging_configuration(LoggingConfiguration)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="waf_put_logging_configuration_:_LoggingConfiguration">LoggingConfiguration</code></td>
<td><p>[required] The Amazon Kinesis Data Firehose that contains the
inspected traffic information, the redacted fields details, and the
Amazon Resource Name (ARN) of the web ACL to monitor.</p>
<p>When specifying <code>Type</code> in <code>RedactedFields</code>, you
must use one of the following values: <code>URI</code>,
<code>QUERY_STRING</code>, <code>HEADER</code>, or
<code>METHOD</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      LoggingConfiguration = list(
        ResourceArn = "string",
        LogDestinationConfigs = list(
          "string"
        ),
        RedactedFields = list(
          list(
            Type = "URI"|"QUERY_STRING"|"HEADER"|"METHOD"|"BODY"|"SINGLE_QUERY_ARG"|"ALL_QUERY_ARGS",
            Data = "string"
          )
        )
      )
    )

### Request syntax

    svc$put_logging_configuration(
      LoggingConfiguration = list(
        ResourceArn = "string",
        LogDestinationConfigs = list(
          "string"
        ),
        RedactedFields = list(
          list(
            Type = "URI"|"QUERY_STRING"|"HEADER"|"METHOD"|"BODY"|"SINGLE_QUERY_ARG"|"ALL_QUERY_ARGS",
            Data = "string"
          )
        )
      )
    )
