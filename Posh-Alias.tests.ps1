Import-Module $PSScriptRoot\posh-alias.psm1
Describe "Add-Alias" {
	Context "With Global Function" {
        $script:bar = $null
        function global:Foo($i) { if($i) { $script:bar = $i } else {$script:bar = 1 } }
        Add-Alias "xyz" "Foo"
		It "is called without parameter" {
            $script:bar = 0
            xyz
            $script:bar | should be 1
		}
		It "is called with parameter" {
            $script:bar = 0
            xyz 3
            $script:bar | should be 3
		}
		It "is called with string parameter with double quotes" {
            $script:bar = 0
            xyz 'foo"oo'
            $script:bar | should be 'foo"oo'
		}
		It "is called with string parameter with single quotes" {
            $script:bar = 0
            xyz "foo'oo"
            $script:bar | should be "foo'oo"
		}
	}
}