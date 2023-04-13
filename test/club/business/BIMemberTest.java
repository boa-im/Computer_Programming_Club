/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/UnitTests/JUnit4TestClass.java to edit this template
 */
package club.business;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author Boa Im
 */
public class BIMemberTest {
    
    Member member;
    
    @Before
    public void setUp() {
        member = new Member();
    }
    
    @After
    public void tearDown() {
        member = null;
    }

    /**
     * Test of getFullName method, of class Member.
     */
    @Test
    public void testGetFullName() {
        // Arrange
        System.out.println("getFullName");
        member.setFullName("Boa Im");
        
        // Act
        String result = member.getFullName();
        
        // Assert
        assertEquals("Boa Im", result);
    }

    /**
     * Test of getProgramName method, of class Member.
     */
    @Test
    public void testGetProgramName() {
        // Arrange
        System.out.println("getProgramName");
        member.setProgramName("CPA");
        
        // Act
        String result = member.getProgramName();
        
        // Assert
        assertEquals("CPA", result);
    }

    /**
     * Test of getEmailAddress method, of class Member.
     */
    @Test
    public void testGetEmailAddress() {
        // Arrange
        System.out.println("getEmailAddress");
        member.setEmailAddress("bim1777@conestogac.on.ca");
        
        // Act
        String result = member.getEmailAddress();
        
        // Assert
        assertEquals("bim1777@conestogac.on.ca", result);
    }

    /**
     * Test of getYearLevel method, of class Member.
     */
    @Test
    public void testGetYearLevel() {
        // Arrange
        System.out.println("getYearLevel");
        member.setYearLevel(2);
        
        // Act
        int result = member.getYearLevel();
        
        // Assert
        assertEquals(2, result);
    }

    /**
     * Test of getPhoneNumber method, of class Member.
     */
    @Test
    public void testGetPhoneNumber() {
        // Arrange
        System.out.println("getPhoneNumber");
        member.setPhoneNumber("647-828-8628");
        
        // Act
        String result = member.getPhoneNumber();
        
        // Assert
        assertEquals("647-828-8628", result);
    }

    /**
     * Test of isValid method to check Positive, of class Member.
     */
    @Test
    public void testValidPositive() {
        // Arrange
        System.out.println("ValidPositive");
        member = new Member("Boa Im", "bim1777@conestogac.on.ca");
        
        // Act
        boolean result = member.isValid();
        
        // Assert
        assertEquals(true, result);
    }

    /**
     * Test of isValid method to check Negative, of class Member.
     */
    @Test
    public void testValidNegative() {
        // Arrange
        System.out.println("ValidNegative");
        member = new Member("Boa Im", "");
        
        // Act
        boolean result = member.isValid();
        
        // Assert
        assertEquals(false, result);
    }
}
