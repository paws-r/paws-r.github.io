<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_get_instance_types_from_instance_requirements</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of instance types with the specified instance attributes

### Description

Returns a list of instance types with the specified instance attributes.
You can use the response to preview the instance types without launching
instances. Note that the response does not consider capacity.

When you specify multiple parameters, you get instance types that
satisfy all of the specified parameters. If you specify multiple values
for a parameter, you get instance types that satisfy any of the
specified values.

For more information, see [Preview instance types with specified
attributes](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-fleet-attribute-based-instance-type-selection.html#spotfleet-get-instance-types-from-instance-requirements),
[Attribute-based instance type selection for EC2
Fleet](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-fleet-attribute-based-instance-type-selection.html),
[Attribute-based instance type selection for Spot
Fleet](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-fleet-attribute-based-instance-type-selection.html),
and [Spot placement
score](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-placement-score.html)
in the *Amazon EC2 User Guide*, and [Creating an Auto Scaling group
using attribute-based instance type
selection](https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-asg-instance-type-requirements.html)
in the *Amazon EC2 Auto Scaling User Guide*.

### Usage

    ec2_get_instance_types_from_instance_requirements(DryRun,
      ArchitectureTypes, VirtualizationTypes, InstanceRequirements,
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
id="ec2_get_instance_types_from_instance_requirements_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_get_instance_types_from_instance_requirements_:_ArchitectureTypes">ArchitectureTypes</code></td>
<td><p>[required] The processor architecture type.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_get_instance_types_from_instance_requirements_:_VirtualizationTypes">VirtualizationTypes</code></td>
<td><p>[required] The virtualization type.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_get_instance_types_from_instance_requirements_:_InstanceRequirements">InstanceRequirements</code></td>
<td><p>[required] The attributes required for the instance
types.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_get_instance_types_from_instance_requirements_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to return for this request. To get
the next page of items, make another request with the token returned in
the output. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination">Pagination</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_get_instance_types_from_instance_requirements_:_NextToken">NextToken</code></td>
<td><p>The token returned from a previous paginated request. Pagination
continues from the end of the items returned by the previous
request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      InstanceTypes = list(
        list(
          InstanceType = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_instance_types_from_instance_requirements(
      DryRun = TRUE|FALSE,
      ArchitectureTypes = list(
        "i386"|"x86_64"|"arm64"|"x86_64_mac"|"arm64_mac"
      ),
      VirtualizationTypes = list(
        "hvm"|"paravirtual"
      ),
      InstanceRequirements = list(
        VCpuCount = list(
          Min = 123,
          Max = 123
        ),
        MemoryMiB = list(
          Min = 123,
          Max = 123
        ),
        CpuManufacturers = list(
          "intel"|"amd"|"amazon-web-services"
        ),
        MemoryGiBPerVCpu = list(
          Min = 123.0,
          Max = 123.0
        ),
        ExcludedInstanceTypes = list(
          "string"
        ),
        InstanceGenerations = list(
          "current"|"previous"
        ),
        SpotMaxPricePercentageOverLowestPrice = 123,
        OnDemandMaxPricePercentageOverLowestPrice = 123,
        BareMetal = "included"|"required"|"excluded",
        BurstablePerformance = "included"|"required"|"excluded",
        RequireHibernateSupport = TRUE|FALSE,
        NetworkInterfaceCount = list(
          Min = 123,
          Max = 123
        ),
        LocalStorage = "included"|"required"|"excluded",
        LocalStorageTypes = list(
          "hdd"|"ssd"
        ),
        TotalLocalStorageGB = list(
          Min = 123.0,
          Max = 123.0
        ),
        BaselineEbsBandwidthMbps = list(
          Min = 123,
          Max = 123
        ),
        AcceleratorTypes = list(
          "gpu"|"fpga"|"inference"
        ),
        AcceleratorCount = list(
          Min = 123,
          Max = 123
        ),
        AcceleratorManufacturers = list(
          "nvidia"|"amd"|"amazon-web-services"|"xilinx"
        ),
        AcceleratorNames = list(
          "a100"|"v100"|"k80"|"t4"|"m60"|"radeon-pro-v520"|"vu9p"|"inferentia"|"k520"
        ),
        AcceleratorTotalMemoryMiB = list(
          Min = 123,
          Max = 123
        ),
        NetworkBandwidthGbps = list(
          Min = 123.0,
          Max = 123.0
        ),
        AllowedInstanceTypes = list(
          "string"
        )
      ),
      MaxResults = 123,
      NextToken = "string"
    )
