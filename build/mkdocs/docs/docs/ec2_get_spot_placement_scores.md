<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_get_spot_placement_scores</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Calculates the Spot placement score for a Region or Availability Zone based on the specified target capacity and compute requirements

### Description

Calculates the Spot placement score for a Region or Availability Zone
based on the specified target capacity and compute requirements.

You can specify your compute requirements either by using
`InstanceRequirementsWithMetadata` and letting Amazon EC2 choose the
optimal instance types to fulfill your Spot request, or you can specify
the instance types by using `InstanceTypes`.

For more information, see [Spot placement
score](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-placement-score.html)
in the Amazon EC2 User Guide.

### Usage

    ec2_get_spot_placement_scores(InstanceTypes, TargetCapacity,
      TargetCapacityUnitType, SingleAvailabilityZone, RegionNames,
      InstanceRequirementsWithMetadata, DryRun, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_get_spot_placement_scores_:_InstanceTypes">InstanceTypes</code></td>
<td><p>The instance types. We recommend that you specify at least three
instance types. If you specify one or two instance types, or specify
variations of a single instance type (for example, an
<code>m3.xlarge</code> with and without instance storage), the returned
placement score will always be low.</p>
<p>If you specify <code>InstanceTypes</code>, you can't specify
<code>InstanceRequirementsWithMetadata</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_get_spot_placement_scores_:_TargetCapacity">TargetCapacity</code></td>
<td><p>[required] The target capacity.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_get_spot_placement_scores_:_TargetCapacityUnitType">TargetCapacityUnitType</code></td>
<td><p>The unit for the target capacity.</p>
<p>Default: <code>units</code> (translates to number of
instances)</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_get_spot_placement_scores_:_SingleAvailabilityZone">SingleAvailabilityZone</code></td>
<td><p>Specify <code>true</code> so that the response returns a list of
scored Availability Zones. Otherwise, the response returns a list of
scored Regions.</p>
<p>A list of scored Availability Zones is useful if you want to launch
all of your Spot capacity into a single Availability Zone.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_get_spot_placement_scores_:_RegionNames">RegionNames</code></td>
<td><p>The Regions used to narrow down the list of Regions to be scored.
Enter the Region code, for example, <code>us-east-1</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_get_spot_placement_scores_:_InstanceRequirementsWithMetadata">InstanceRequirementsWithMetadata</code></td>
<td><p>The attributes for the instance types. When you specify instance
attributes, Amazon EC2 will identify instance types with those
attributes.</p>
<p>If you specify <code>InstanceRequirementsWithMetadata</code>, you
can't specify <code>InstanceTypes</code>.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_get_spot_placement_scores_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_get_spot_placement_scores_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to return for this request. To get
the next page of items, make another request with the token returned in
the output. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination">Pagination</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_get_spot_placement_scores_:_NextToken">NextToken</code></td>
<td><p>The token returned from a previous paginated request. Pagination
continues from the end of the items returned by the previous
request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SpotPlacementScores = list(
        list(
          Region = "string",
          AvailabilityZoneId = "string",
          Score = 123
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_spot_placement_scores(
      InstanceTypes = list(
        "string"
      ),
      TargetCapacity = 123,
      TargetCapacityUnitType = "vcpu"|"memory-mib"|"units",
      SingleAvailabilityZone = TRUE|FALSE,
      RegionNames = list(
        "string"
      ),
      InstanceRequirementsWithMetadata = list(
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
        )
      ),
      DryRun = TRUE|FALSE,
      MaxResults = 123,
      NextToken = "string"
    )
