<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elbv2_set_rule_priorities</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Sets the priorities of the specified rules

### Description

Sets the priorities of the specified rules.

You can reorder the rules as long as there are no priority conflicts in
the new order. Any existing rules that you do not specify retain their
current priority.

### Usage

    elbv2_set_rule_priorities(RulePriorities)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elbv2_set_rule_priorities_:_RulePriorities">RulePriorities</code></td>
<td><p>[required] The rule priorities.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Rules = list(
        list(
          RuleArn = "string",
          Priority = "string",
          Conditions = list(
            list(
              Field = "string",
              Values = list(
                "string"
              ),
              HostHeaderConfig = list(
                Values = list(
                  "string"
                )
              ),
              PathPatternConfig = list(
                Values = list(
                  "string"
                )
              ),
              HttpHeaderConfig = list(
                HttpHeaderName = "string",
                Values = list(
                  "string"
                )
              ),
              QueryStringConfig = list(
                Values = list(
                  list(
                    Key = "string",
                    Value = "string"
                  )
                )
              ),
              HttpRequestMethodConfig = list(
                Values = list(
                  "string"
                )
              ),
              SourceIpConfig = list(
                Values = list(
                  "string"
                )
              )
            )
          ),
          Actions = list(
            list(
              Type = "forward"|"authenticate-oidc"|"authenticate-cognito"|"redirect"|"fixed-response",
              TargetGroupArn = "string",
              AuthenticateOidcConfig = list(
                Issuer = "string",
                AuthorizationEndpoint = "string",
                TokenEndpoint = "string",
                UserInfoEndpoint = "string",
                ClientId = "string",
                ClientSecret = "string",
                SessionCookieName = "string",
                Scope = "string",
                SessionTimeout = 123,
                AuthenticationRequestExtraParams = list(
                  "string"
                ),
                OnUnauthenticatedRequest = "deny"|"allow"|"authenticate",
                UseExistingClientSecret = TRUE|FALSE
              ),
              AuthenticateCognitoConfig = list(
                UserPoolArn = "string",
                UserPoolClientId = "string",
                UserPoolDomain = "string",
                SessionCookieName = "string",
                Scope = "string",
                SessionTimeout = 123,
                AuthenticationRequestExtraParams = list(
                  "string"
                ),
                OnUnauthenticatedRequest = "deny"|"allow"|"authenticate"
              ),
              Order = 123,
              RedirectConfig = list(
                Protocol = "string",
                Port = "string",
                Host = "string",
                Path = "string",
                Query = "string",
                StatusCode = "HTTP_301"|"HTTP_302"
              ),
              FixedResponseConfig = list(
                MessageBody = "string",
                StatusCode = "string",
                ContentType = "string"
              ),
              ForwardConfig = list(
                TargetGroups = list(
                  list(
                    TargetGroupArn = "string",
                    Weight = 123
                  )
                ),
                TargetGroupStickinessConfig = list(
                  Enabled = TRUE|FALSE,
                  DurationSeconds = 123
                )
              )
            )
          ),
          IsDefault = TRUE|FALSE
        )
      )
    )

### Request syntax

    svc$set_rule_priorities(
      RulePriorities = list(
        list(
          RuleArn = "string",
          Priority = 123
        )
      )
    )

### Examples

    ## Not run: 
    # This example sets the priority of the specified rule.
    svc$set_rule_priorities(
      RulePriorities = list(
        list(
          Priority = 5L,
          RuleArn = "arn:aws:elasticloadbalancing:us-west-2:123456789012:listen..."
        )
      )
    )

    ## End(Not run)
