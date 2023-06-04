<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elb_set_load_balancer_listener_ssl_certificate</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Sets the certificate that terminates the specified listener's SSL connections

### Description

Sets the certificate that terminates the specified listener's SSL
connections. The specified certificate replaces any prior certificate
that was used on the same load balancer and port.

For more information about updating your SSL certificate, see [Replace
the SSL Certificate for Your Load
Balancer](https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-update-ssl-cert.html)
in the *Classic Load Balancers Guide*.

### Usage

    elb_set_load_balancer_listener_ssl_certificate(LoadBalancerName,
      LoadBalancerPort, SSLCertificateId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elb_set_load_balancer_listener_ssl_certificate_:_LoadBalancerName">LoadBalancerName</code></td>
<td><p>[required] The name of the load balancer.</p></td>
</tr>
<tr class="even">
<td><code
id="elb_set_load_balancer_listener_ssl_certificate_:_LoadBalancerPort">LoadBalancerPort</code></td>
<td><p>[required] The port that uses the specified SSL
certificate.</p></td>
</tr>
<tr class="odd">
<td><code
id="elb_set_load_balancer_listener_ssl_certificate_:_SSLCertificateId">SSLCertificateId</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the SSL
certificate.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$set_load_balancer_listener_ssl_certificate(
      LoadBalancerName = "string",
      LoadBalancerPort = 123,
      SSLCertificateId = "string"
    )

### Examples

    ## Not run: 
    # This example replaces the existing SSL certificate for the specified
    # HTTPS listener.
    svc$set_load_balancer_listener_ssl_certificate(
      LoadBalancerName = "my-load-balancer",
      LoadBalancerPort = 443L,
      SSLCertificateId = "arn:aws:iam::123456789012:server-certificate/new-server-cert"
    )

    ## End(Not run)
