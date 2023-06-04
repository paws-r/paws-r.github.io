<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_describe_patch_properties</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the properties of available patches organized by product, product family, classification, severity, and other properties of available patches

### Description

Lists the properties of available patches organized by product, product
family, classification, severity, and other properties of available
patches. You can use the reported properties in the filters you specify
in requests for operations such as `create_patch_baseline`,
`update_patch_baseline`, `describe_available_patches`, and
`describe_patch_baselines`.

The following section lists the properties that can be used in filters
for each major operating system type:

#### AMAZON\_LINUX

Valid properties: `PRODUCT` | `CLASSIFICATION` | `SEVERITY`

#### AMAZON\_LINUX\_2

Valid properties: `PRODUCT` | `CLASSIFICATION` | `SEVERITY`

#### CENTOS

Valid properties: `PRODUCT` | `CLASSIFICATION` | `SEVERITY`

#### DEBIAN

Valid properties: `PRODUCT` | `PRIORITY`

#### MACOS

Valid properties: `PRODUCT` | `CLASSIFICATION`

#### ORACLE\_LINUX

Valid properties: `PRODUCT` | `CLASSIFICATION` | `SEVERITY`

#### REDHAT\_ENTERPRISE\_LINUX

Valid properties: `PRODUCT` | `CLASSIFICATION` | `SEVERITY`

#### SUSE

Valid properties: `PRODUCT` | `CLASSIFICATION` | `SEVERITY`

#### UBUNTU

Valid properties: `PRODUCT` | `PRIORITY`

#### WINDOWS

Valid properties: `PRODUCT` | `PRODUCT_FAMILY` | `CLASSIFICATION` |
`MSRC_SEVERITY`

### Usage

    ssm_describe_patch_properties(OperatingSystem, Property, PatchSet,
      MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssm_describe_patch_properties_:_OperatingSystem">OperatingSystem</code></td>
<td><p>[required] The operating system type for which to list
patches.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_describe_patch_properties_:_Property">Property</code></td>
<td><p>[required] The patch property for which you want to view patch
details.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_describe_patch_properties_:_PatchSet">PatchSet</code></td>
<td><p>Indicates whether to list patches for the Windows operating
system or for applications released by Microsoft. Not applicable for the
Linux or macOS operating systems.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_describe_patch_properties_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to return for this call. The call
also returns a token that you can specify in a subsequent call to get
the next set of results.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_describe_patch_properties_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of items to return. (You received this
token from a previous call.)</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Properties = list(
        list(
          "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_patch_properties(
      OperatingSystem = "WINDOWS"|"AMAZON_LINUX"|"AMAZON_LINUX_2"|"AMAZON_LINUX_2022"|"UBUNTU"|"REDHAT_ENTERPRISE_LINUX"|"SUSE"|"CENTOS"|"ORACLE_LINUX"|"DEBIAN"|"MACOS"|"RASPBIAN"|"ROCKY_LINUX"|"ALMA_LINUX"|"AMAZON_LINUX_2023",
      Property = "PRODUCT"|"PRODUCT_FAMILY"|"CLASSIFICATION"|"MSRC_SEVERITY"|"PRIORITY"|"SEVERITY",
      PatchSet = "OS"|"APPLICATION",
      MaxResults = 123,
      NextToken = "string"
    )
