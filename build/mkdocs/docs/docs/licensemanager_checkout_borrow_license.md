<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>licensemanager_checkout_borrow_license</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Checks out the specified license for offline use

### Description

Checks out the specified license for offline use.

### Usage

    licensemanager_checkout_borrow_license(LicenseArn, Entitlements,
      DigitalSignatureMethod, NodeId, CheckoutMetadata, ClientToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="licensemanager_checkout_borrow_license_:_LicenseArn">LicenseArn</code></td>
<td><p>[required] Amazon Resource Name (ARN) of the license. The license
must use the borrow consumption configuration.</p></td>
</tr>
<tr class="even">
<td><code
id="licensemanager_checkout_borrow_license_:_Entitlements">Entitlements</code></td>
<td><p>[required] License entitlements. Partial checkouts are not
supported.</p></td>
</tr>
<tr class="odd">
<td><code
id="licensemanager_checkout_borrow_license_:_DigitalSignatureMethod">DigitalSignatureMethod</code></td>
<td><p>[required] Digital signature method. The possible value is JSON
Web Signature (JWS) algorithm PS384. For more information, see <a
href="https://datatracker.ietf.org/doc/html/rfc7518#section-3.5">RFC
7518 Digital Signature with RSASSA-PSS</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="licensemanager_checkout_borrow_license_:_NodeId">NodeId</code></td>
<td><p>Node ID.</p></td>
</tr>
<tr class="odd">
<td><code
id="licensemanager_checkout_borrow_license_:_CheckoutMetadata">CheckoutMetadata</code></td>
<td><p>Information about constraints.</p></td>
</tr>
<tr class="even">
<td><code
id="licensemanager_checkout_borrow_license_:_ClientToken">ClientToken</code></td>
<td><p>[required] Unique, case-sensitive identifier that you provide to
ensure the idempotency of the request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      LicenseArn = "string",
      LicenseConsumptionToken = "string",
      EntitlementsAllowed = list(
        list(
          Name = "string",
          Value = "string",
          Unit = "Count"|"None"|"Seconds"|"Microseconds"|"Milliseconds"|"Bytes"|"Kilobytes"|"Megabytes"|"Gigabytes"|"Terabytes"|"Bits"|"Kilobits"|"Megabits"|"Gigabits"|"Terabits"|"Percent"|"Bytes/Second"|"Kilobytes/Second"|"Megabytes/Second"|"Gigabytes/Second"|"Terabytes/Second"|"Bits/Second"|"Kilobits/Second"|"Megabits/Second"|"Gigabits/Second"|"Terabits/Second"|"Count/Second"
        )
      ),
      NodeId = "string",
      SignedToken = "string",
      IssuedAt = "string",
      Expiration = "string",
      CheckoutMetadata = list(
        list(
          Name = "string",
          Value = "string"
        )
      )
    )

### Request syntax

    svc$checkout_borrow_license(
      LicenseArn = "string",
      Entitlements = list(
        list(
          Name = "string",
          Value = "string",
          Unit = "Count"|"None"|"Seconds"|"Microseconds"|"Milliseconds"|"Bytes"|"Kilobytes"|"Megabytes"|"Gigabytes"|"Terabytes"|"Bits"|"Kilobits"|"Megabits"|"Gigabits"|"Terabits"|"Percent"|"Bytes/Second"|"Kilobytes/Second"|"Megabytes/Second"|"Gigabytes/Second"|"Terabytes/Second"|"Bits/Second"|"Kilobits/Second"|"Megabits/Second"|"Gigabits/Second"|"Terabits/Second"|"Count/Second"
        )
      ),
      DigitalSignatureMethod = "JWT_PS384",
      NodeId = "string",
      CheckoutMetadata = list(
        list(
          Name = "string",
          Value = "string"
        )
      ),
      ClientToken = "string"
    )
