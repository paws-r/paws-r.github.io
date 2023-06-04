<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elbv2_remove_listener_certificates</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes the specified certificate from the certificate list for the specified HTTPS or TLS listener

### Description

Removes the specified certificate from the certificate list for the
specified HTTPS or TLS listener.

### Usage

    elbv2_remove_listener_certificates(ListenerArn, Certificates)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elbv2_remove_listener_certificates_:_ListenerArn">ListenerArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the
listener.</p></td>
</tr>
<tr class="even">
<td><code
id="elbv2_remove_listener_certificates_:_Certificates">Certificates</code></td>
<td><p>[required] The certificate to remove. You can specify one
certificate per call. Set <code>CertificateArn</code> to the certificate
ARN but do not set <code>IsDefault</code>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$remove_listener_certificates(
      ListenerArn = "string",
      Certificates = list(
        list(
          CertificateArn = "string",
          IsDefault = TRUE|FALSE
        )
      )
    )
