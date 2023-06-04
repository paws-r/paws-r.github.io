<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directoryservice_add_ip_routes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## If the DNS server for your self-managed domain uses a publicly addressable IP address, you must add a CIDR address block to correctly route traffic to and from your Microsoft AD on Amazon Web Services

### Description

If the DNS server for your self-managed domain uses a publicly
addressable IP address, you must add a CIDR address block to correctly
route traffic to and from your Microsoft AD on Amazon Web Services.
*AddIpRoutes* adds this address block. You can also use *AddIpRoutes* to
facilitate routing traffic that uses public IP ranges from your
Microsoft AD on Amazon Web Services to a peer VPC.

Before you call *AddIpRoutes*, ensure that all of the required
permissions have been explicitly granted through a policy. For details
about what permissions are required to run the *AddIpRoutes* operation,
see [Directory Service API Permissions: Actions, Resources, and
Conditions
Reference](https://docs.aws.amazon.com/directoryservice/latest/admin-guide/UsingWithDS_IAM_ResourcePermissions.html).

### Usage

    directoryservice_add_ip_routes(DirectoryId, IpRoutes,
      UpdateSecurityGroupForDirectoryControllers)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directoryservice_add_ip_routes_:_DirectoryId">DirectoryId</code></td>
<td><p>[required] Identifier (ID) of the directory to which to add the
address block.</p></td>
</tr>
<tr class="even">
<td><code
id="directoryservice_add_ip_routes_:_IpRoutes">IpRoutes</code></td>
<td><p>[required] IP address blocks, using CIDR format, of the traffic
to route. This is often the IP address block of the DNS server used for
your self-managed domain.</p></td>
</tr>
<tr class="odd">
<td><code
id="directoryservice_add_ip_routes_:_UpdateSecurityGroupForDirectoryControllers">UpdateSecurityGroupForDirectoryControllers</code></td>
<td><p>If set to true, updates the inbound and outbound rules of the
security group that has the description: "Amazon Web Services created
security group for <em>directory ID</em> directory controllers."
Following are the new rules:</p>
<p>Inbound:</p>
<ul>
<li><p>Type: Custom UDP Rule, Protocol: UDP, Range: 88, Source:
0.0.0.0/0</p></li>
<li><p>Type: Custom UDP Rule, Protocol: UDP, Range: 123, Source:
0.0.0.0/0</p></li>
<li><p>Type: Custom UDP Rule, Protocol: UDP, Range: 138, Source:
0.0.0.0/0</p></li>
<li><p>Type: Custom UDP Rule, Protocol: UDP, Range: 389, Source:
0.0.0.0/0</p></li>
<li><p>Type: Custom UDP Rule, Protocol: UDP, Range: 464, Source:
0.0.0.0/0</p></li>
<li><p>Type: Custom UDP Rule, Protocol: UDP, Range: 445, Source:
0.0.0.0/0</p></li>
<li><p>Type: Custom TCP Rule, Protocol: TCP, Range: 88, Source:
0.0.0.0/0</p></li>
<li><p>Type: Custom TCP Rule, Protocol: TCP, Range: 135, Source:
0.0.0.0/0</p></li>
<li><p>Type: Custom TCP Rule, Protocol: TCP, Range: 445, Source:
0.0.0.0/0</p></li>
<li><p>Type: Custom TCP Rule, Protocol: TCP, Range: 464, Source:
0.0.0.0/0</p></li>
<li><p>Type: Custom TCP Rule, Protocol: TCP, Range: 636, Source:
0.0.0.0/0</p></li>
<li><p>Type: Custom TCP Rule, Protocol: TCP, Range: 1024-65535, Source:
0.0.0.0/0</p></li>
<li><p>Type: Custom TCP Rule, Protocol: TCP, Range: 3268-33269, Source:
0.0.0.0/0</p></li>
<li><p>Type: DNS (UDP), Protocol: UDP, Range: 53, Source:
0.0.0.0/0</p></li>
<li><p>Type: DNS (TCP), Protocol: TCP, Range: 53, Source:
0.0.0.0/0</p></li>
<li><p>Type: LDAP, Protocol: TCP, Range: 389, Source: 0.0.0.0/0</p></li>
<li><p>Type: All ICMP, Protocol: All, Range: N/A, Source:
0.0.0.0/0</p></li>
</ul>
<p>Outbound:</p>
<ul>
<li><p>Type: All traffic, Protocol: All, Range: All, Destination:
0.0.0.0/0</p></li>
</ul>
<p>These security rules impact an internal network interface that is not
exposed publicly.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$add_ip_routes(
      DirectoryId = "string",
      IpRoutes = list(
        list(
          CidrIp = "string",
          Description = "string"
        )
      ),
      UpdateSecurityGroupForDirectoryControllers = TRUE|FALSE
    )
