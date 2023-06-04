<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elbv2_describe_rules</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the specified rules or the rules for the specified listener

### Description

Describes the specified rules or the rules for the specified listener.
You must specify either a listener or one or more rules.

### Usage

    elbv2_describe_rules(ListenerArn, RuleArns, Marker, PageSize)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elbv2_describe_rules_:_ListenerArn">ListenerArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the listener.</p></td>
</tr>
<tr class="even">
<td><code id="elbv2_describe_rules_:_RuleArns">RuleArns</code></td>
<td><p>The Amazon Resource Names (ARN) of the rules.</p></td>
</tr>
<tr class="odd">
<td><code id="elbv2_describe_rules_:_Marker">Marker</code></td>
<td><p>The marker for the next set of results. (You received this marker
from a previous call.)</p></td>
</tr>
<tr class="even">
<td><code id="elbv2_describe_rules_:_PageSize">PageSize</code></td>
<td><p>The maximum number of results to return with this call.</p></td>
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
      ),
      NextMarker = "string"
    )

### Request syntax

    svc$describe_rules(
      ListenerArn = "string",
      RuleArns = list(
        "string"
      ),
      Marker = "string",
      PageSize = 123
    )

### Examples

    ## Not run: 
    # This example describes the specified rule.
    svc$describe_rules(
      RuleArns = list(
        "arn:aws:elasticloadbalancing:us-west-2:123456789012:listener-rule/app/..."
      )
    )

    ## End(Not run)
