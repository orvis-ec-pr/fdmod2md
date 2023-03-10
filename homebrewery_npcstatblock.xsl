<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>   
	<xsl:preserve-space elements="desc" />
    <xsl:template match="npc">
		<xsl:for-each select="category">
# <xsl:value-of select="./@name" />
		<xsl:for-each select="./*">

		
{{monster,frame,wide
## <xsl:value-of select="name" />
*<xsl:if test="size!=''"><xsl:value-of select="size" /><xsl:text> </xsl:text></xsl:if><xsl:value-of select="type" />, <xsl:value-of select="alignment" />*
___
**Armor Class** :: <xsl:value-of select="ac" /> <xsl:if test="actext!=''" >(<xsl:value-of select="actext" />)</xsl:if>
**Hit Points**  :: <xsl:value-of select="hp" /> (<xsl:value-of select="hd" />)<xsl:if test="damagethreshold > 0">
**Damage Threshold** :: <xsl:value-of select="damagethreshold" /></xsl:if>
**Speed**       :: <xsl:value-of select="speed" />
___
|  STR  |  DEX  |  CON  |  INT  |  WIS  |  CHA  |
|:-----:|:-----:|:-----:|:-----:|:-----:|:-----:|
<xsl:choose><xsl:when test="abilities"
 >|<xsl:value-of select="abilities/strength/score" /> (<xsl:value-of select="abilities/strength/bonus" 
 />)|<xsl:value-of select="abilities/dexterity/score" /> (<xsl:value-of select="abilities/dexterity/bonus" 
 />)|<xsl:value-of select="abilities/constitution/score" /> (<xsl:value-of select="abilities/constitution/bonus" 
 />)|<xsl:value-of select="abilities/intelligence/score" /> (<xsl:value-of select="abilities/intelligence/bonus" 
 />)|<xsl:value-of select="abilities/wisdom/score" /> (<xsl:value-of select="abilities/wisdom/bonus" 
 />)|<xsl:value-of select="abilities/charisma/score" /> (<xsl:value-of select="abilities/charisma/bonus" 
 />)|</xsl:when><xsl:when test="strength"
 >|<xsl:value-of select="strength" 
 />|<xsl:value-of select="dexterity" 
 />|<xsl:value-of select="constitution" 
 />|<xsl:value-of select="intelligence" 
 />|<xsl:value-of select="wisdom" 
 />|<xsl:value-of select="charisma" 
 />|</xsl:when>
</xsl:choose>
___
<xsl:if test="savingthrows!=''">**Saving Throws**               :: <xsl:value-of select="savingthrows" /><xsl:text>
</xsl:text></xsl:if>
<xsl:if test="skills!=''">**Skills**               :: <xsl:value-of select="skills" /><xsl:text>
</xsl:text></xsl:if>
<xsl:if test="damageresistances!=''">**Damage Resistances**               :: <xsl:value-of select="damageresistances" /><xsl:text>
</xsl:text></xsl:if>
<xsl:if test="damagevulnerabilities!=''">**Damage Vulnerabilities**               :: <xsl:value-of select="damagevulnerabilities" /><xsl:text>
</xsl:text></xsl:if>
<xsl:if test="damageimmunities!=''">**Damage Immunities**               :: <xsl:value-of select="damageimmunities" /><xsl:text>
</xsl:text></xsl:if>
<xsl:if test="specialqualities!=''">**Special Qualities**    :: <xsl:value-of select="specialqualities" /><xsl:text>
</xsl:text></xsl:if>
<xsl:if test="conditionimmunities!=''">**Condition Immunities** :: <xsl:value-of select="conditionimmunities" /><xsl:text>
</xsl:text></xsl:if>
<xsl:if test="senses!=''">**Senses**               :: <xsl:value-of select="senses" /><xsl:text>
</xsl:text></xsl:if>
<xsl:if test="feats!=''">**Feats**               :: <xsl:value-of select="feats" /><xsl:text>
</xsl:text></xsl:if>
<xsl:if test="environment!=''">**Environment**               :: <xsl:value-of select="environment" /><xsl:text>
</xsl:text></xsl:if>
<xsl:if test="organization!=''">**Organization**               :: <xsl:value-of select="organization" /><xsl:text>
</xsl:text></xsl:if>
<xsl:if test="languages!=''">**Languages**            :: <xsl:value-of select="languages" /><xsl:text>
</xsl:text></xsl:if>**Challenge**            :: <xsl:value-of select="cr" /> (<xsl:value-of select="xp" /> XP)
___
			<xsl:for-each select="traits/*">
***<xsl:value-of select="name" />.*** <xsl:value-of select="desc" />
:
			</xsl:for-each>
<xsl:if test="actions/*[./name !='Spellcasting']">
### Actions
			<xsl:for-each select="actions/*[./name !='Spellcasting']">
***<xsl:value-of select="name" />.*** <xsl:value-of select="replace(desc,'\\n','&#xA;')" />
:
			</xsl:for-each>
</xsl:if>
<xsl:if test="bonusactions/*">
### Bonus Actions
			<xsl:for-each select="bonusactions/*">
***<xsl:value-of select="name" />.*** <xsl:value-of select="replace(desc,'\\n','&#xA;')" />
:
			</xsl:for-each>
</xsl:if>
<xsl:if test="reactions/*">
### Reactions
			<xsl:for-each select="reactions/*">
***<xsl:value-of select="name" />.*** <xsl:value-of select="replace(desc,'\\n','&#xA;')" />
:
			</xsl:for-each>
</xsl:if>
<xsl:if test="legendaryactions/*">
### Legendary Actions
			<xsl:for-each select="legendaryactions/*">
***<xsl:value-of select="name" />.*** <xsl:value-of select="replace(desc,'\\n','&#xA;')" />
:
			</xsl:for-each>
</xsl:if>
<xsl:if test="lairactions/*">
### Lair Actions
			<xsl:for-each select="lairactions/*">
***<xsl:value-of select="name" />.*** <xsl:value-of select="replace(desc,'\\n','&#xA;')" />
:
			</xsl:for-each>
</xsl:if>
<xsl:if test="innatespells/*">
### Innate Spells
			<xsl:for-each select="innatespells/*">
***<xsl:value-of select="name" />.*** <xsl:value-of select="replace(substring-before(desc,'\n\n'), '\\n', '&#xA;')" />
:
			</xsl:for-each>
</xsl:if>
<xsl:if test="spells/*">
### Spells
	<xsl:if test="spellslots/*">
___
| L1 | L2 | L3 | L4 | L5 | L6 | L7 | L8 | L9 |
|:--:|:--:|:--:|:--:|:--:|:--:|:--:|:--:|:--:|
| <xsl:value-of select="spellslots/level1" 
  /> | <xsl:value-of select="spellslots/level2" 
  /> | <xsl:value-of select="spellslots/level3" 
  /> | <xsl:value-of select="spellslots/level4" 
  /> | <xsl:value-of select="spellslots/level5" 
  /> | <xsl:value-of select="spellslots/level6" 
  /> | <xsl:value-of select="spellslots/level7" 
  /> | <xsl:value-of select="spellslots/level8" 
  /> | <xsl:value-of select="spellslots/level9" /> |
___
	</xsl:if>
			<xsl:for-each select="spells/*">
***<xsl:value-of select="name" />.*** <xsl:value-of select="replace(substring-before(desc,'\n\n'), '\\n', '&#xA;')" />
:
			</xsl:for-each>
</xsl:if>

}}
<xsl:if test="text">
\page

{{note,wide
<xsl:apply-templates select="text/*" />
}}
</xsl:if>
\page
	</xsl:for-each>
</xsl:for-each>
</xsl:template>

<xsl:template match="p">
<xsl:apply-templates select="* | text()"/><xsl:text>

</xsl:text>
</xsl:template>

<xsl:template match="h">
<xsl:text>##### </xsl:text><xsl:apply-templates select="* | text()"/><xsl:text>

</xsl:text>
</xsl:template>

<xsl:template match="b">
<xsl:text> **</xsl:text><xsl:apply-templates select="* | text()"/><xsl:text>** </xsl:text>
</xsl:template>

<xsl:template match="*/i[not(self::b)]">
<xsl:text> _</xsl:text><xsl:apply-templates select="* | text()"/><xsl:text>_ </xsl:text>
</xsl:template>

<xsl:template match="b/i">
<xsl:text>*</xsl:text><xsl:apply-templates select="* | text()"/><xsl:text>*</xsl:text>
</xsl:template>

<xsl:template match="linklist">
<xsl:apply-templates select="link"/>
</xsl:template>

<xsl:template match="frame">
{{descriptive,wide
<xsl:apply-templates select="* | text()"/><xsl:text>
</xsl:text>
}}
</xsl:template>

<xsl:template match="text()">
<xsl:value-of select="normalize-space(.)"/>
</xsl:template>

<xsl:template match="linklist/link[@class = 'power']">
<xsl:text>
</xsl:text>
<xsl:apply-templates select="* | text()"/> (<xsl:value-of select="substring-after(@recordname, '@')" />)
<xsl:text>
</xsl:text>
</xsl:template>

<xsl:template match="linklist/link[@class = 'imagewindow']">
<xsl:text>
Image: </xsl:text>
<xsl:apply-templates select="* | text()"/>
<xsl:text>
</xsl:text>
</xsl:template>
	
<xsl:template name="markdown-code-block">
<xsl:param name="input"/>
<xsl:param name="value">
	<xsl:choose>
	<xsl:when test="contains($input,'&#xa;')">
		<xsl:value-of select="substring-before($input,'&#xa;')"/>
	</xsl:when>
	<xsl:otherwise>
		<xsl:value-of select="$input"/>
	</xsl:otherwise>
	</xsl:choose>
</xsl:param>
<xsl:param name="remaining-values" select="substring-after($input,'&#xa;')"/>
<xsl:value-of select="substring-before($input,'&#xa;')"/><xsl:text>&#xa;    </xsl:text>
<xsl:if test="$remaining-values != ''">
	<xsl:call-template name="markdown-code-block">
	<xsl:with-param name="input" select="$remaining-values"/>
	</xsl:call-template>
</xsl:if>
</xsl:template>

<xsl:template match="img" priority="1">
<xsl:text>![</xsl:text>
<xsl:value-of select="@alt"/>
<xsl:text>](</xsl:text>
<xsl:value-of select="@src"/>
<xsl:if test="@title">
	<xsl:text> "</xsl:text>
	<xsl:value-of select="@title"/>
	<xsl:text>"</xsl:text>
</xsl:if>
<xsl:text>)</xsl:text>
</xsl:template>

</xsl:stylesheet>