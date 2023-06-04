<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>fms_get_compliance_detail</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns detailed compliance information about the specified member account

### Description

Returns detailed compliance information about the specified member
account. Details include resources that are in and out of compliance
with the specified policy.

-   Resources are considered noncompliant for WAF and Shield Advanced
    policies if the specified policy has not been applied to them.

-   Resources are considered noncompliant for security group policies if
    they are in scope of the policy, they violate one or more of the
    policy rules, and remediation is disabled or not possible.

-   Resources are considered noncompliant for Network Firewall policies
    if a firewall is missing in the VPC, if the firewall endpoint isn't
    set up in an expected Availability Zone and subnet, if a subnet
    created by the Firewall Manager doesn't have the expected route
    table, and for modifications to a firewall policy that violate the
    Firewall Manager policy's rules.

-   Resources are considered noncompliant for DNS Firewall policies if a
    DNS Firewall rule group is missing from the rule group associations
    for the VPC.

### Usage

    fms_get_compliance_detail(PolicyId, MemberAccount)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="fms_get_compliance_detail_:_PolicyId">PolicyId</code></td>
<td><p>[required] The ID of the policy that you want to get the details
for. <code>PolicyId</code> is returned by <code>put_policy</code> and by
<code>list_policies</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="fms_get_compliance_detail_:_MemberAccount">MemberAccount</code></td>
<td><p>[required] The Amazon Web Services account that owns the
resources that you want to get the details for.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PolicyComplianceDetail = list(
        PolicyOwner = "string",
        PolicyId = "string",
        MemberAccount = "string",
        Violators = list(
          list(
            ResourceId = "string",
            ViolationReason = "WEB_ACL_MISSING_RULE_GROUP"|"RESOURCE_MISSING_WEB_ACL"|"RESOURCE_INCORRECT_WEB_ACL"|"RESOURCE_MISSING_SHIELD_PROTECTION"|"RESOURCE_MISSING_WEB_ACL_OR_SHIELD_PROTECTION"|"RESOURCE_MISSING_SECURITY_GROUP"|"RESOURCE_VIOLATES_AUDIT_SECURITY_GROUP"|"SECURITY_GROUP_UNUSED"|"SECURITY_GROUP_REDUNDANT"|"FMS_CREATED_SECURITY_GROUP_EDITED"|"MISSING_FIREWALL"|"MISSING_FIREWALL_SUBNET_IN_AZ"|"MISSING_EXPECTED_ROUTE_TABLE"|"NETWORK_FIREWALL_POLICY_MODIFIED"|"FIREWALL_SUBNET_IS_OUT_OF_SCOPE"|"INTERNET_GATEWAY_MISSING_EXPECTED_ROUTE"|"FIREWALL_SUBNET_MISSING_EXPECTED_ROUTE"|"UNEXPECTED_FIREWALL_ROUTES"|"UNEXPECTED_TARGET_GATEWAY_ROUTES"|"TRAFFIC_INSPECTION_CROSSES_AZ_BOUNDARY"|"INVALID_ROUTE_CONFIGURATION"|"MISSING_TARGET_GATEWAY"|"INTERNET_TRAFFIC_NOT_INSPECTED"|"BLACK_HOLE_ROUTE_DETECTED"|"BLACK_HOLE_ROUTE_DETECTED_IN_FIREWALL_SUBNET"|"RESOURCE_MISSING_DNS_FIREWALL"|"ROUTE_HAS_OUT_OF_SCOPE_ENDPOINT"|"FIREWALL_SUBNET_MISSING_VPCE_ENDPOINT",
            ResourceType = "string",
            Metadata = list(
              "string"
            )
          )
        ),
        EvaluationLimitExceeded = TRUE|FALSE,
        ExpiredAt = as.POSIXct(
          "2015-01-01"
        ),
        IssueInfoMap = list(
          "string"
        )
      )
    )

### Request syntax

    svc$get_compliance_detail(
      PolicyId = "string",
      MemberAccount = "string"
    )
