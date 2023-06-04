<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directconnect_describe_router_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Details about the router

### Description

Details about the router.

### Usage

    directconnect_describe_router_configuration(virtualInterfaceId,
      routerTypeIdentifier)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directconnect_describe_router_configuration_:_virtualInterfaceId">virtualInterfaceId</code></td>
<td><p>[required] The ID of the virtual interface.</p></td>
</tr>
<tr class="even">
<td><code
id="directconnect_describe_router_configuration_:_routerTypeIdentifier">routerTypeIdentifier</code></td>
<td><p>Identifies the router by a combination of vendor, platform, and
software version. For example, <code
style="white-space: pre;">⁠CiscoSystemsInc-2900SeriesRouters-IOS124⁠</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      customerRouterConfig = "string",
      router = list(
        vendor = "string",
        platform = "string",
        software = "string",
        xsltTemplateName = "string",
        xsltTemplateNameForMacSec = "string",
        routerTypeIdentifier = "string"
      ),
      virtualInterfaceId = "string",
      virtualInterfaceName = "string"
    )

### Request syntax

    svc$describe_router_configuration(
      virtualInterfaceId = "string",
      routerTypeIdentifier = "string"
    )
