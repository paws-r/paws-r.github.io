<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elbv2_modify_listener</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Replaces the specified properties of the specified listener

### Description

Replaces the specified properties of the specified listener. Any
properties that you do not specify remain unchanged.

Changing the protocol from HTTPS to HTTP, or from TLS to TCP, removes
the security policy and default certificate properties. If you change
the protocol from HTTP to HTTPS, or from TCP to TLS, you must add the
security policy and default certificate properties.

To add an item to a list, remove an item from a list, or update an item
in a list, you must provide the entire list. For example, to add an
action, specify a list with the current actions plus the new action.

### Usage

    elbv2_modify_listener(ListenerArn, Port, Protocol, SslPolicy,
      Certificates, DefaultActions, AlpnPolicy)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elbv2_modify_listener_:_ListenerArn">ListenerArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the
listener.</p></td>
</tr>
<tr class="even">
<td><code id="elbv2_modify_listener_:_Port">Port</code></td>
<td><p>The port for connections from clients to the load balancer. You
cannot specify a port for a Gateway Load Balancer.</p></td>
</tr>
<tr class="odd">
<td><code id="elbv2_modify_listener_:_Protocol">Protocol</code></td>
<td><p>The protocol for connections from clients to the load balancer.
Application Load Balancers support the HTTP and HTTPS protocols. Network
Load Balancers support the TCP, TLS, UDP, and TCP_UDP protocols. You
can’t change the protocol to UDP or TCP_UDP if dual-stack mode is
enabled. You cannot specify a protocol for a Gateway Load
Balancer.</p></td>
</tr>
<tr class="even">
<td><code id="elbv2_modify_listener_:_SslPolicy">SslPolicy</code></td>
<td><p>[HTTPS and TLS listeners] The security policy that defines which
protocols and ciphers are supported.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/elasticloadbalancing/latest/application/create-https-listener.html#describe-ssl-policies">Security
policies</a> in the <em>Application Load Balancers Guide</em> or <a
href="https://docs.aws.amazon.com/elasticloadbalancing/latest/network/create-tls-listener.html#describe-ssl-policies">Security
policies</a> in the <em>Network Load Balancers Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="elbv2_modify_listener_:_Certificates">Certificates</code></td>
<td><p>[HTTPS and TLS listeners] The default certificate for the
listener. You must provide exactly one certificate. Set
<code>CertificateArn</code> to the certificate ARN but do not set
<code>IsDefault</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="elbv2_modify_listener_:_DefaultActions">DefaultActions</code></td>
<td><p>The actions for the default rule.</p></td>
</tr>
<tr class="odd">
<td><code id="elbv2_modify_listener_:_AlpnPolicy">AlpnPolicy</code></td>
<td><p>[TLS listeners] The name of the Application-Layer Protocol
Negotiation (ALPN) policy. You can specify one policy name. The
following are the possible values:</p>
<ul>
<li><p><code>HTTP1Only</code></p></li>
<li><p><code>HTTP2Only</code></p></li>
<li><p><code>HTTP2Optional</code></p></li>
<li><p><code>HTTP2Preferred</code></p></li>
<li><p><code>None</code></p></li>
</ul>
<p>For more information, see <a
href="https://docs.aws.amazon.com/elasticloadbalancing/latest/network/create-tls-listener.html#alpn-policies">ALPN
policies</a> in the <em>Network Load Balancers Guide</em>.</p></td>
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
      )
    )

### Request syntax

    svc$modify_listener(
      ListenerArn = "string",
      Port = 123,
      Protocol = "HTTP"|"HTTPS"|"TCP"|"TLS"|"UDP"|"TCP_UDP"|"GENEVE",
      SslPolicy = "string",
      Certificates = list(
        list(
          CertificateArn = "string",
          IsDefault = TRUE|FALSE
        )
      ),
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

### Examples

    ## Not run: 
    # This example changes the default action for the specified listener.
    svc$modify_listener(
      DefaultActions = list(
        list(
          TargetGroupArn = "arn:aws:elasticloadbalancing:us-west-2:123456789012...",
          Type = "forward"
        )
      ),
      ListenerArn = "arn:aws:elasticloadbalancing:us-west-2:123456789012:listen..."
    )

    # This example changes the server certificate for the specified HTTPS
    # listener.
    svc$modify_listener(
      Certificates = list(
        list(
          CertificateArn = "arn:aws:iam::123456789012:server-certificate/my-new-server-cert"
        )
      ),
      ListenerArn = "arn:aws:elasticloadbalancing:us-west-2:123456789012:listen..."
    )

    ## End(Not run)
