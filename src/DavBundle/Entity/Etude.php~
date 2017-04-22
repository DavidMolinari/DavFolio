<?php

namespace DavBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Etude
 *
 * @ORM\Table(name="etude")
 * @ORM\Entity(repositoryClass="DavBundle\Repository\EtudeRepository")
 */
class Etude
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
     * @ORM\Column(name="periode", type="string", length=255, nullable=true)
     */
    private $periode;

    /**
     * @var string
     *
     * @ORM\Column(name="libelle", type="string", length=255, nullable=true)
     */
    private $libelle;

    /**
     * @var string
     *
     * @ORM\Column(name="description", type="text", nullable=true)
     */
    private $description;


    /**
     * @var string
     *
     * @ORM\Column(name="cote", type="string", length=255, nullable=true)
     */
    private $cote;

    /**
     * @var string
     *
     * @ORM\Column(name="inverse", type="string", length=255, nullable=true)
     */
    private $inverse;
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
     * Set periode
     *
     * @param string $periode
     *
     * @return Etude
     */
    public function setPeriode($periode)
    {
        $this->periode = $periode;

        return $this;
    }

    /**
     * Get periode
     *
     * @return string
     */
    public function getPeriode()
    {
        return $this->periode;
    }

    /**
     * Set libelle
     *
     * @param string $libelle
     *
     * @return Etude
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
     * Set description
     *
     * @param string $description
     *
     * @return Etude
     */
    public function setDescription($description)
    {
        $this->description = $description;

        return $this;
    }

    /**
     * Get description
     *
     * @return string
     */
    public function getDescription()
    {
        return $this->description;
    }

    /**
     * Set cote
     *
     * @param string $cote
     *
     * @return Etude
     */
    public function setCote($cote)
    {
        $this->cote = $cote;

        return $this;
    }

    /**
     * Get cote
     *
     * @return string
     */
    public function getCote()
    {
        return $this->cote;
    }

    /**
     * Set inverse
     *
     * @param string $inverse
     *
     * @return Etude
     */
    public function setInverse($inverse)
    {
        $this->inverse = $inverse;

        return $this;
    }

    /**
     * Get inverse
     *
     * @return string
     */
    public function getInverse()
    {
        return $this->inverse;
    }
}
