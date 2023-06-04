<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elbv2_describe_listener_certificates</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the default certificate and the certificate list for the specified HTTPS or TLS listener

### Description

Describes the default certificate and the certificate list for the
specified HTTPS or TLS listener.

If the default certificate is also in the certificate list, it appears
twice in the results (once with `IsDefault` set to true and once with
`IsDefault` set to false).

For more information, see [SSL
certificates](https://docs.aws.amazon.com/elasticloadbalancing/latest/application/create-https-listener.html#https-listener-certificates)
in the *Application Load Balancers Guide* or [Server
certificates](https://docs.aws.amazon.com/elasticloadbalancing/latest/network/create-tls-listener.html#tls-listener-certificate)
in the *Network Load Balancers Guide*.

### Usage

    elbv2_describe_listener_certificates(ListenerArn, Marker, PageSize)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elbv2_describe_listener_certificates_:_ListenerArn">ListenerArn</code></td>
<td><p>[required] The Amazon Resource Names (ARN) of the
listener.</p></td>
</tr>
<tr class="even">
<td><code
id="elbv2_describe_listener_certificates_:_Marker">Marker</code></td>
<td><p>The marker for the next set of results. (You received this marker
from a previous call.)</p></td>
</tr>
<tr class="odd">
<td><code
id="elbv2_describe_listener_certificates_:_PageSize">PageSize</code></td>
<td><p>The maximum number of results to return with this call.</p></td>
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
      ),
      NextMarker = "string"
    )

### Request syntax

    svc$describe_listener_certificates(
      ListenerArn = "string",
      Marker = "string",
      PageSize = 123
    )
