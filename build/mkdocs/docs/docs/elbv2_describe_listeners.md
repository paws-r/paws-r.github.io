<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elbv2_describe_listeners</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the specified listeners or the listeners for the specified Application Load Balancer, Network Load Balancer, or Gateway Load Balancer

### Description

Describes the specified listeners or the listeners for the specified
Application Load Balancer, Network Load Balancer, or Gateway Load
Balancer. You must specify either a load balancer or one or more
listeners.

### Usage

    elbv2_describe_listeners(LoadBalancerArn, ListenerArns, Marker,
      PageSize)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elbv2_describe_listeners_:_LoadBalancerArn">LoadBalancerArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the load balancer.</p></td>
</tr>
<tr class="even">
<td><code
id="elbv2_describe_listeners_:_ListenerArns">ListenerArns</code></td>
<td><p>The Amazon Resource Names (ARN) of the listeners.</p></td>
</tr>
<tr class="odd">
<td><code id="elbv2_describe_listeners_:_Marker">Marker</code></td>
<td><p>The marker for the next set of results. (You received this marker
from a previous call.)</p></td>
</tr>
<tr class="even">
<td><code id="elbv2_describe_listeners_:_PageSize">PageSize</code></td>
<td><p>The maximum number of results to return with this call.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Listeners = list(
        list(
          ListenerArn = "string",
          LoadBalancerArn = "string",
          Port = 123,
          Protocol = "HTTP"|"HTTPS"|"TCP"|"TLS"|"UDP"|"TCP_UDP"|"GENEVE",
          Certificates = list(
            list(
              CertificateArn = "string",
              IsDefault = TRUE|FALSE
            )
          ),
          SslPolicy = "string",
          DefaultActions = list(
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
          AlpnPolicy = list(
            "string"
          )
        )
      ),
      NextMarker = "string"
    )

### Request syntax

    svc$describe_listeners(
      LoadBalancerArn = "string",
      ListenerArns = list(
        "string"
      ),
      Marker = "string",
      PageSize = 123
    )

### Examples

    ## Not run: 
    # This example describes the specified listener.
    svc$describe_listeners(
      ListenerArns = list(
        "arn:aws:elasticloadbalancing:us-west-2:123456789012:listener/app/my-lo..."
      )
    )

    ## End(Not run)
