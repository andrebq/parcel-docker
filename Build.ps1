function Build-Image {
	docker build -t andrebq/parcel-docker .
}

function Publish-Image {
	Build-Image
	docker push andrebq/parcel-docker
}

function Write-Usage {
	if ($PSCommandPath -eq $null) { function GetPSCommandPath() { return $MyInvocation.PSCommandPath; } $PSCommandPath = GetPSCommandPath; }
	Write-Host @"
Usage: $PSCommandPath build|push
"@
}

switch ($Args[0]) {
	"build" { Build-Image }
	"push" { Push-Image }
	default { Write-Usage }
}
