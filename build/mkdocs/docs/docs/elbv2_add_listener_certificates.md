<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elbv2_add_listener_certificates</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds the specified SSL server certificate to the certificate list for the specified HTTPS or TLS listener

### Description

Adds the specified SSL server certificate to the certificate list for
the specified HTTPS or TLS listener.

If the certificate in already in the certificate list, the call is
successful but the certificate is not added again.

For more information, see [HTTPS
listeners](https://docs.aws.amazon.com/elasticloadbalancing/latest/application/create-https-listener.html)
in the *Application Load Balancers Guide* or [TLS
listeners](https://docs.aws.amazon.com/elasticloadbalancing/latest/network/create-tls-listener.html)
in the *Network Load Balancers Guide*.

### Usage

    elbv2_add_listener_certificates(ListenerArn, Certificates)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elbv2_add_listener_certificates_:_ListenerArn">ListenerArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the
listener.</p></td>
</tr>
<tr class="even">
<td><code
id="elbv2_add_listener_certificates_:_Certificates">Certificates</code></td>
<td><p>[required] The certificate to add. You can specify one
certificate per call. Set <code>CertificateArn</code> to the certificate
ARN but do not set <code>IsDefault</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Certificates = list(
        list(
          CertificateArn = "string",
          IsDefault = TRUE|FALSE
        )
      )
    )

### Request syntax

    svc$add_listener_certificates(
      ListenerArn = "string",
      Certificates = list(
        list(
          CertificateArn = "string",
          IsDefault = TRUE|FALSE
        )
      )
    )
