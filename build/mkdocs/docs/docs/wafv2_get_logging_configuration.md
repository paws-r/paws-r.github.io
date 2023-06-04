<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>wafv2_get_logging_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the LoggingConfiguration for the specified web ACL

### Description

Returns the LoggingConfiguration for the specified web ACL.

### Usage

    wafv2_get_logging_configuration(ResourceArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="wafv2_get_logging_configuration_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the web ACL for
which you want to get the LoggingConfiguration.</p></td>
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

    svc$get_logging_configuration(
      ResourceArn = "string"
    )
