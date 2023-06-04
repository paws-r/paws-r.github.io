<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>panorama_list_devices</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of devices

### Description

Returns a list of devices.

### Usage

    panorama_list_devices(DeviceAggregatedStatusFilter, MaxResults,
      NameFilter, NextToken, SortBy, SortOrder)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="panorama_list_devices_:_DeviceAggregatedStatusFilter">DeviceAggregatedStatusFilter</code></td>
<td><p>Filter based on a device's status.</p></td>
</tr>
<tr class="even">
<td><code id="panorama_list_devices_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of devices to return in one page of
results.</p></td>
</tr>
<tr class="odd">
<td><code id="panorama_list_devices_:_NameFilter">NameFilter</code></td>
<td><p>Filter based on device's name. Prefixes supported.</p></td>
</tr>
<tr class="even">
<td><code id="panorama_list_devices_:_NextToken">NextToken</code></td>
<td><p>Specify the pagination token from a previous request to retrieve
the next page of results.</p></td>
</tr>
<tr class="odd">
<td><code id="panorama_list_devices_:_SortBy">SortBy</code></td>
<td><p>The target column to be sorted on. Default column sort is
CREATED_TIME.</p></td>
</tr>
<tr class="even">
<td><code id="panorama_list_devices_:_SortOrder">SortOrder</code></td>
<td><p>The sorting order for the returned list. SortOrder is DESCENDING
by default based on CREATED_TIME. Otherwise, SortOrder is
ASCENDING.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Devices = list(
        list(
          Brand = "AWS_PANORAMA"|"LENOVO",
          CreatedTime = as.POSIXct(
            "2015-01-01"
          ),
          CurrentSoftware = "string",
          Description = "string",
          DeviceAggregatedStatus = "ERROR"|"AWAITING_PROVISIONING"|"PENDING"|"FAILED"|"DELETING"|"ONLINE"|"OFFLINE"|"LEASE_EXPIRED"|"UPDATE_NEEDED"|"REBOOTING",
          DeviceId = "string",
          LastUpdatedTime = as.POSIXct(
            "2015-01-01"
          ),
          LatestDeviceJob = list(
            ImageVersion = "string",
            JobType = "OTA"|"REBOOT",
            Status = "PENDING"|"IN_PROGRESS"|"VERIFYING"|"REBOOTING"|"DOWNLOADING"|"COMPLETED"|"FAILED"
          ),
          LeaseExpirationTime = as.POSIXct(
            "2015-01-01"
          ),
          Name = "string",
          ProvisioningStatus = "AWAITING_PROVISIONING"|"PENDING"|"SUCCEEDED"|"FAILED"|"ERROR"|"DELETING",
          Tags = list(
            "string"
          ),
          Type = "PANORAMA_APPLIANCE_DEVELOPER_KIT"|"PANORAMA_APPLIANCE"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_devices(
      DeviceAggregatedStatusFilter = "ERROR"|"AWAITING_PROVISIONING"|"PENDING"|"FAILED"|"DELETING"|"ONLINE"|"OFFLINE"|"LEASE_EXPIRED"|"UPDATE_NEEDED"|"REBOOTING",
      MaxResults = 123,
      NameFilter = "string",
      NextToken = "string",
      SortBy = "DEVICE_ID"|"CREATED_TIME"|"NAME"|"DEVICE_AGGREGATED_STATUS",
      SortOrder = "ASCENDING"|"DESCENDING"
    )
