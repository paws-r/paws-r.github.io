<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elbv2_create_rule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a rule for the specified listener

### Description

Creates a rule for the specified listener. The listener must be
associated with an Application Load Balancer.

Each rule consists of a priority, one or more actions, and one or more
conditions. Rules are evaluated in priority order, from the lowest value
to the highest value. When the conditions for a rule are met, its
actions are performed. If the conditions for no rules are met, the
actions for the default rule are performed. For more information, see
[Listener
rules](https://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-listeners.html#listener-rules)
in the *Application Load Balancers Guide*.

### Usage

    elbv2_create_rule(ListenerArn, Conditions, Priority, Actions, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="elbv2_create_rule_:_ListenerArn">ListenerArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the
listener.</p></td>
</tr>
<tr class="even">
<td><code id="elbv2_create_rule_:_Conditions">Conditions</code></td>
<td><p>[required] The conditions.</p></td>
</tr>
<tr class="odd">
<td><code id="elbv2_create_rule_:_Priority">Priority</code></td>
<td><p>[required] The rule priority. A listener can't have multiple
rules with the same priority.</p></td>
</tr>
<tr class="even">
<td><code id="elbv2_create_rule_:_Actions">Actions</code></td>
<td><p>[required] The actions.</p></td>
</tr>
<tr class="odd">
<td><code id="elbv2_create_rule_:_Tags">Tags</code></td>
<td><p>The tags to assign to the rule.</p></td>
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

    svc$create_rule(
      ListenerArn = "string",
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
      Priority = 123,
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
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )

### Examples

    ## Not run: 
    # This example creates a rule that forwards requests to the specified
    # target group if the URL contains the specified pattern (for example,
    # /img/*).
    svc$create_rule(
      Actions = list(
        list(
          TargetGroupArn = "arn:aws:elasticloadbalancing:us-west-2:123456789012...",
          Type = "forward"
        )
      ),
      Conditions = list(
        list(
          Field = "path-pattern",
          Values = list(
            "/img/*"
          )
        )
      ),
      ListenerArn = "arn:aws:elasticloadbalancing:us-west-2:123456789012:listen...",
      Priority = 10L
    )

    ## End(Not run)
