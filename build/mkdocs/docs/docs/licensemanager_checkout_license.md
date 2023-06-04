<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>licensemanager_checkout_license</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Checks out the specified license

### Description

Checks out the specified license.

If the account that created the license is the same that is performing
the check out, you must specify the account as the beneficiary.

### Usage

    licensemanager_checkout_license(ProductSKU, CheckoutType,
      KeyFingerprint, Entitlements, ClientToken, Beneficiary, NodeId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="licensemanager_checkout_license_:_ProductSKU">ProductSKU</code></td>
<td><p>[required] Product SKU.</p></td>
</tr>
<tr class="even">
<td><code
id="licensemanager_checkout_license_:_CheckoutType">CheckoutType</code></td>
<td><p>[required] Checkout type.</p></td>
</tr>
<tr class="odd">
<td><code
id="licensemanager_checkout_license_:_KeyFingerprint">KeyFingerprint</code></td>
<td><p>[required] Key fingerprint identifying the license.</p></td>
</tr>
<tr class="even">
<td><code
id="licensemanager_checkout_license_:_Entitlements">Entitlements</code></td>
<td><p>[required] License entitlements.</p></td>
</tr>
<tr class="odd">
<td><code
id="licensemanager_checkout_license_:_ClientToken">ClientToken</code></td>
<td><p>[required] Unique, case-sensitive identifier that you provide to
ensure the idempotency of the request.</p></td>
</tr>
<tr class="even">
<td><code
id="licensemanager_checkout_license_:_Beneficiary">Beneficiary</code></td>
<td><p>License beneficiary.</p></td>
</tr>
<tr class="odd">
<td><code
id="licensemanager_checkout_license_:_NodeId">NodeId</code></td>
<td><p>Node ID.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CheckoutType = "PROVISIONAL"|"PERPETUAL",
      LicenseConsumptionToken = "string",
      EntitlementsAllowed = list(
        list(
          Name = "string",
          Value = "string",
          Unit = "Count"|"None"|"Seconds"|"Microseconds"|"Milliseconds"|"Bytes"|"Kilobytes"|"Megabytes"|"Gigabytes"|"Terabytes"|"Bits"|"Kilobits"|"Megabits"|"Gigabits"|"Terabits"|"Percent"|"Bytes/Second"|"Kilobytes/Second"|"Megabytes/Second"|"Gigabytes/Second"|"Terabytes/Second"|"Bits/Second"|"Kilobits/Second"|"Megabits/Second"|"Gigabits/Second"|"Terabits/Second"|"Count/Second"
        )
      ),
      SignedToken = "string",
      NodeId = "string",
      IssuedAt = "string",
      Expiration = "string",
      LicenseArn = "string"
    )

### Request syntax

    svc$checkout_license(
      ProductSKU = "string",
      CheckoutType = "PROVISIONAL"|"PERPETUAL",
      KeyFingerprint = "string",
      Entitlements = list(
        list(
          Name = "string",
          Value = "string",
          Unit = "Count"|"None"|"Seconds"|"Microseconds"|"Milliseconds"|"Bytes"|"Kilobytes"|"Megabytes"|"Gigabytes"|"Terabytes"|"Bits"|"Kilobits"|"Megabits"|"Gigabits"|"Terabits"|"Percent"|"Bytes/Second"|"Kilobytes/Second"|"Megabytes/Second"|"Gigabytes/Second"|"Terabytes/Second"|"Bits/Second"|"Kilobits/Second"|"Megabits/Second"|"Gigabits/Second"|"Terabits/Second"|"Count/Second"
        )
      ),
      ClientToken = "string",
      Beneficiary = "string",
      NodeId = "string"
    )
