package upc.mana.homepage;

import java.awt.Color;

import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;
import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
//���������֤��
public class ValidateServlet extends HttpServlet {
 // ��֤��ͼƬ�Ŀ���
 private int width = 400;
 // �߶�
 private int height = 80;
 // ��֤����ַ�����
 private int codeCount = 4;
 private int x = 0;
 // ����߶�
 private int fontHeight;
 private int codeY;
 char[] codeSequence = { 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J',
 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W',
 'X', 'Y', 'Z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9' };
 @Override
 public void init() throws ServletException {
 super.init();
    }
 public void doGet(HttpServletRequest request, HttpServletResponse response)
 throws ServletException, IOException {
 // ����һ���������������
       Random random = new Random();
 // 1������һ��ͼƬ��
 x = width / (codeCount + 1);
 fontHeight = height - 2;
 codeY = height - 4;
 // ����ͼ��buffer
       BufferedImage buffImg = new BufferedImage(width, height,
       BufferedImage.TYPE_INT_RGB);
       Graphics2D g = buffImg.createGraphics();
 // ��ͼ�����Ϊ��ɫ
       g.setColor(Color.WHITE);
       g.fillRect(0, 0, width, height);
 // �������壬����Ĵ�СӦ�ø���ͼƬ�ĸ߶�������
       Font font = new Font("Fixedsys", Font.PLAIN, fontHeight);
 // �������塣
       g.setFont(font);
 // ���߿�
       g.setColor(Color.BLACK);
       g.drawRect(0, 0, width - 1, height - 1);
 // �������160�������ߣ�ʹͼ���е���֤�벻�ױ���������̽�⵽��
       g.setColor(Color.BLACK);
 for (int i = 0; i < 160; i++) {
 int x = random.nextInt(width);
 int y = random.nextInt(height);
 int xl = random.nextInt(12);
 int yl = random.nextInt(12);
           g.drawLine(x, y, x + xl, y + yl);
       }
 // 2�����������
 // randomCode���ڱ��������������֤�룬�Ա��û���¼�������֤��
       StringBuffer randomCode = new StringBuffer();
 int red = 0, green = 0, blue = 0;
 // �������codeCount���ֵ���֤�롣
 for (int i = 0; i < codeCount; i++) {
 // �õ������������֤�����֡�
           String strRand = String.valueOf(codeSequence[random.nextInt(36)]);
 // �����������ɫ������������ɫֵ�����������ÿλ���ֵ���ɫֵ������ͬ��
           red = random.nextInt(255);
           green = random.nextInt(255);
           blue = random.nextInt(255);
 // �������������ɫ����֤����Ƶ�ͼ���С�
           g.setColor(new Color(red, green, blue));
           g.drawString(strRand, (i + 1) * x, codeY);
 // ���������ĸ�����������һ��
           randomCode.append(strRand);
       }
 // 3��Ҫ�����������session��
 // ����λ���ֵ���֤�뱣�浽Session�С�
       HttpSession session = request.getSession();
       session.setAttribute("validateCode", randomCode.toString());
 // 4�����ͼƬ
 // ��ֹͼ�񻺴档
       response.setHeader("Pragma", "no-cache");
       response.setHeader("Cache-Control", "no-cache");
       response.setDateHeader("Expires", 0);
       response.setContentType("image/jpeg");
 // ��ͼ�������Servlet������С�
       ServletOutputStream out = response.getOutputStream();
       ImageIO.write(buffImg, "jpeg", out);
       out.flush();
       out.close();
    }
 public void doPost(HttpServletRequest request, HttpServletResponse response)
 throws ServletException, IOException {
       doGet(request, response);
    }
}