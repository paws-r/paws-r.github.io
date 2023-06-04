<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_get_vpn_connection_device_types</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Obtain a list of customer gateway devices for which sample configuration files can be provided

### Description

Obtain a list of customer gateway devices for which sample configuration
files can be provided. The request has no additional parameters. You can
also see the list of device types with sample configuration files
available under [Your customer gateway
device](https://docs.aws.amazon.com/vpn/latest/s2svpn/your-cgw.html) in
the *Amazon Web Services Site-to-Site VPN User Guide*.

### Usage

    ec2_get_vpn_connection_device_types(MaxResults, NextToken, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_get_vpn_connection_device_types_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results returned by
<code>get_vpn_connection_device_types</code> in paginated output. When
this parameter is used, <code>get_vpn_connection_device_types</code>
only returns <code>MaxResults</code> results in a single page along with
a <code>NextToken</code> response element. The remaining results of the
initial request can be seen by sending another
<code>get_vpn_connection_device_types</code> request with the returned
<code>NextToken</code> value. This value can be between 200 and 1000. If
this parameter is not used, then
<code>get_vpn_connection_device_types</code> returns all
results.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_get_vpn_connection_device_types_:_NextToken">NextToken</code></td>
<td><p>The <code>NextToken</code> value returned from a previous
paginated <code>get_vpn_connection_device_types</code> request where
<code>MaxResults</code> was used and the results exceeded the value of
that parameter. Pagination continues from the end of the previous
results that returned the <code>NextToken</code> value. This value is
null when there are no more results to return.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_get_vpn_connection_device_types_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      VpnConnectionDeviceTypes = list(
        list(
          VpnConnectionDeviceTypeId = "string",
          Vendor = "string",
          Platform = "string",
          Software = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_vpn_connection_device_types(
      MaxResults = 123,
      NextToken = "string",
      DryRun = TRUE|FALSE
    )
