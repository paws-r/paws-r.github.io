<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>wafv2_put_logging_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Enables the specified LoggingConfiguration, to start logging from a web ACL, according to the configuration provided

### Description

Enables the specified LoggingConfiguration, to start logging from a web
ACL, according to the configuration provided.

This operation completely replaces any mutable specifications that you
already have for a logging configuration with the ones that you provide
to this call.

To modify an existing logging configuration, do the following:

1.  Retrieve it by calling `get_logging_configuration`

2.  Update its settings as needed

3.  Provide the complete logging configuration specification to this
    call

You can define one logging destination per web ACL.

You can access information about the traffic that WAF inspects using the
following steps:

1.  Create your logging destination. You can use an Amazon CloudWatch
    Logs log group, an Amazon Simple Storage Service (Amazon S3) bucket,
    or an Amazon Kinesis Data Firehose.

    The name that you give the destination must start with
    `⁠aws-waf-logs-⁠`. Depending on the type of destination, you might
    need to configure additional settings or permissions.

    For configuration requirements and pricing information for each
    destination type, see [Logging web ACL
    traffic](https://docs.aws.amazon.com/waf/latest/developerguide/logging.html)
    in the *WAF Developer Guide*.

2.  Associate your logging destination to your web ACL using a
    `put_logging_configuration` request.

When you successfully enable logging using a `put_logging_configuration`
request, WAF creates an additional role or policy that is required to
write logs to the logging destination. For an Amazon CloudWatch Logs log
group, WAF creates a resource policy on the log group. For an Amazon S3
bucket, WAF creates a bucket policy. For an Amazon Kinesis Data
Firehose, WAF creates a service-linked role.

For additional information about web ACL logging, see [Logging web ACL
traffic
information](https://docs.aws.amazon.com/waf/latest/developerguide/logging.html)
in the *WAF Developer Guide*.

### Usage

    wafv2_put_logging_configuration(LoggingConfiguration)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="wafv2_put_logging_configuration_:_LoggingConfiguration">LoggingConfiguration</code></td>
<td><p>[required]</p></td>
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
            SingleHeader = list(
              Name = "string"
            ),
            SingleQueryArgument = list(
              Name = "string"
            ),
            AllQueryArguments = list(),
            UriPath = list(),
            QueryString = list(),
            Body = list(
              OversizeHandling = "CONTINUE"|"MATCH"|"NO_MATCH"
            ),
            Method = list(),
            JsonBody = list(
              MatchPattern = list(
                All = list(),
                IncludedPaths = list(
                  "string"
                )
              ),
              MatchScope = "ALL"|"KEY"|"VALUE",
              InvalidFallbackBehavior = "MATCH"|"NO_MATCH"|"EVALUATE_AS_STRING",
              OversizeHandling = "CONTINUE"|"MATCH"|"NO_MATCH"
            ),
            Headers = list(
              MatchPattern = list(
                All = list(),
                IncludedHeaders = list(
                  "string"
                ),
                ExcludedHeaders = list(
                  "string"
                )
              ),
              MatchScope = "ALL"|"KEY"|"VALUE",
              OversizeHandling = "CONTINUE"|"MATCH"|"NO_MATCH"
            ),
            Cookies = list(
              MatchPattern = list(
                All = list(),
                IncludedCookies = list(
                  "string"
                ),
                ExcludedCookies = list(
                  "string"
                )
              ),
              MatchScope = "ALL"|"KEY"|"VALUE",
              OversizeHandling = "CONTINUE"|"MATCH"|"NO_MATCH"
            )
          )
        ),
        ManagedByFirewallManager = TRUE|FALSE,
        LoggingFilter = list(
          Filters = list(
            list(
              Behavior = "KEEP"|"DROP",
              Requirement = "MEETS_ALL"|"MEETS_ANY",
              Conditions = list(
                list(
                  ActionCondition = list(
                    Action = "ALLOW"|"BLOCK"|"COUNT"|"CAPTCHA"|"CHALLENGE"|"EXCLUDED_AS_COUNT"
                  ),
                  LabelNameCondition = list(
                    LabelName = "string"
                  )
                )
              )
            )
          ),
          DefaultBehavior = "KEEP"|"DROP"
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
            SingleHeader = list(
              Name = "string"
            ),
            SingleQueryArgument = list(
              Name = "string"
            ),
            AllQueryArguments = list(),
            UriPath = list(),
            QueryString = list(),
            Body = list(
              OversizeHandling = "CONTINUE"|"MATCH"|"NO_MATCH"
            ),
            Method = list(),
            JsonBody = list(
              MatchPattern = list(
                All = list(),
                IncludedPaths = list(
                  "string"
                )
              ),
              MatchScope = "ALL"|"KEY"|"VALUE",
              InvalidFallbackBehavior = "MATCH"|"NO_MATCH"|"EVALUATE_AS_STRING",
              OversizeHandling = "CONTINUE"|"MATCH"|"NO_MATCH"
            ),
            Headers = list(
              MatchPattern = list(
                All = list(),
                IncludedHeaders = list(
                  "string"
                ),
                ExcludedHeaders = list(
                  "string"
                )
              ),
              MatchScope = "ALL"|"KEY"|"VALUE",
              OversizeHandling = "CONTINUE"|"MATCH"|"NO_MATCH"
            ),
            Cookies = list(
              MatchPattern = list(
                All = list(),
                IncludedCookies = list(
                  "string"
                ),
                ExcludedCookies = list(
                  "string"
                )
              ),
              MatchScope = "ALL"|"KEY"|"VALUE",
              OversizeHandling = "CONTINUE"|"MATCH"|"NO_MATCH"
            )
          )
        ),
        ManagedByFirewallManager = TRUE|FALSE,
        LoggingFilter = list(
          Filters = list(
            list(
              Behavior = "KEEP"|"DROP",
              Requirement = "MEETS_ALL"|"MEETS_ANY",
              Conditions = list(
                list(
                  ActionCondition = list(
                    Action = "ALLOW"|"BLOCK"|"COUNT"|"CAPTCHA"|"CHALLENGE"|"EXCLUDED_AS_COUNT"
                  ),
                  LabelNameCondition = list(
                    LabelName = "string"
                  )
                )
              )
            )
          ),
          DefaultBehavior = "KEEP"|"DROP"
        )
      )
    )
