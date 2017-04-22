<?php

namespace DavBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Competence
 *
 * @ORM\Table(name="competence")
 * @ORM\Entity(repositoryClass="DavBundle\Repository\CompetenceRepository")
 */
class Competence
{
    /**
     * @var int
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $id;

    /**
     * @var string
     *
     * @ORM\Column(name="libelle", type="string", length=255)
     */
    private $libelle;

    /**
     * @var int
     *
     * @ORM\Column(name="value", type="integer")
     */
    private $value;


    /**
     * Get id
     *
     * @return int
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set libelle
     *
     * @param string $libelle
     *
     * @return Competence
     */
    public function setLibelle($libelle)
    {
        $this->libelle = $libelle;

        return $this;
    }

    /**
     * Get libelle
     *
     * @return string
     */
    public function getLibelle()
    {
        return $this->libelle;
    }

    /**
     * Set value
     *
     * @param integer $value
     *
     * @return Competence
     */
    public function setValue($value)
    {
        $this->value = $value;

        return $this;
    }

    /**
     * Get value
     *
     * @return int
     */
    public function getValue()
    {
        return $this->value;
    }
}

