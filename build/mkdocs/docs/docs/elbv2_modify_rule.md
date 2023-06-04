<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elbv2_modify_rule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Replaces the specified properties of the specified rule

### Description

Replaces the specified properties of the specified rule. Any properties
that you do not specify are unchanged.

To add an item to a list, remove an item from a list, or update an item
in a list, you must provide the entire list. For example, to add an
action, specify a list with the current actions plus the new action.

### Usage

    elbv2_modify_rule(RuleArn, Conditions, Actions)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="elbv2_modify_rule_:_RuleArn">RuleArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the rule.</p></td>
</tr>
<tr class="even">
<td><code id="elbv2_modify_rule_:_Conditions">Conditions</code></td>
<td><p>The conditions.</p></td>
</tr>
<tr class="odd">
<td><code id="elbv2_modify_rule_:_Actions">Actions</code></td>
<td><p>The actions.</p></td>
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

    svc$modify_rule(
      RuleArn = "string",
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
      )
    )

### Examples

    ## Not run: 
    # This example modifies the condition for the specified rule.
    svc$modify_rule(
      Conditions = list(
        list(
          Field = "path-pattern",
          Values = list(
            "/images/*"
          )
        )
      ),
      RuleArn = "arn:aws:elasticloadbalancing:us-west-2:123456789012:listener-r..."
    )

    ## End(Not run)
